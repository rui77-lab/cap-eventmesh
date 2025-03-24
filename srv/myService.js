// srv/admin-service.js
const cds = require('@sap/cds')
module.exports = class MyService extends cds.ApplicationService {
    async init() {

        const { EventStorage, ServiceOrders, ServiceRequestCollection } = this.entities

        const messaging = await cds.connect.to('messaging');
        const serviceOrderService = await cds.connect.to('API_SERVICE_ORDER_SRV');
        const c4codata = await cds.connect.to('c4codata');

        messaging.on('acn/sbg/btp/ce/sap/s4/beh/serviceorder/v1/ServiceOrder/Changed/v1', async (msg) => {
            console.log("I'm a message from one of the POC's Queue topic");

            const rowData = [
                {
                    eventData: msg.data
                }
            ]
            await INSERT(rowData).into(EventStorage);

        });

        this.on("testFunction", async (req) => {
            return "hello world";
        });


        this.on("READ", ServiceOrders, async req => {
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