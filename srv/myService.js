// srv/admin-service.js
const cds = require('@sap/cds');
const LOG = cds.log('eventMeshPOC')

module.exports = class MyService extends cds.ApplicationService {
    async init() {

        const { EventStorage, ServiceOrdUserStatus, ServiceOrders, ServiceRequestCollection } = this.entities

        const messaging = await cds.connect.to('messaging');
        const serviceOrderService = await cds.connect.to('API_SERVICE_ORDER_SRV');
        const c4codata = await cds.connect.to('c4codata');

        messaging.on('acn/sbg/btp/ce/sap/s4/beh/serviceorder/v1/ServiceOrder/Changed/v1', async (msg) => {
            console.log("Changed");

            if (msg?.data?.ServiceOrder) {
                const serviceOrder = await serviceOrderService.run(SELECT.one.from(ServiceOrders, {
                    ServiceOrder: msg.data.ServiceOrder
                }).columns(col => {
                    col`.*`,
                        col.to_ServiceOrdUserStatus(c => {
                            c.SrvcOrdUserStatus
                        })
                }));

                if (serviceOrder) {

                    const ticket = await c4codata.run(SELECT.one.from(ServiceRequestCollection).columns("ObjectID", "ServiceRequestUserLifeCycleStatusCode").where({
                        ID: serviceOrder.ZZ1_C4CTicketID_SRH
                    }));


                    let ticketStatus;
                    if (serviceOrder.to_ServiceOrdUserStatus[0].SrvcOrdUserStatus === 'E0005') {
                        ticketStatus = '5';
                    } else if (serviceOrder.to_ServiceOrdUserStatus[0].SrvcOrdUserStatus === 'E0002') {
                        ticketStatus = '2';
                    } else {
                        return;
                    }

                    const ticketUpdateProperties = {
                        ServiceRequestUserLifeCycleStatusCode: ticketStatus
                    }

                    if (ticket.ServiceRequestUserLifeCycleStatusCode !== '5') {
                        ticketUpdateProperties.Name = serviceOrder.ServiceOrderDescription;
                    }

                    await c4codata.run(UPDATE(ServiceRequestCollection, { ObjectID: ticket.ObjectID }).set(ticketUpdateProperties));
                } else {
                    LOG.error("Service order does not exist");
                }

                LOG.info(`Event for service order ${serviceOrder.ServiceOrder} processed`);
            } else {
                LOG.error("Event data does not contain serviceorder!");
            }
        });

        this.on("READ", ServiceOrders, async req => {
            return await serviceOrderService.run(req.query);
        });

        this.on("READ", ServiceOrdUserStatus, async req => {
            return await serviceOrderService.run(req.query);
        });

        this.on(["READ"], ServiceRequestCollection, async req => {
            const result = await c4codata.run(req.query);

            return result;
        });

        this.on(["UPDATE"], ServiceRequestCollection, async (req, next) => {
            await c4codata.run(req.query);
            const result = await c4codata.run(SELECT.from(ServiceRequestCollection).where({
                ObjectID: req.params[0].ObjectID
            }));
            return result;
        });


        return super.init()
    }
}