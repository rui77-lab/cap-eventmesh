// srv/admin-service.js
const cds = require('@sap/cds')
module.exports = class MyService extends cds.ApplicationService {
    async init() {

        const { EventStorage, ServiceOrders, ServiceRequestCollection } = this.entities

        const messaging = await cds.connect.to('messaging');
        const serviceOrderService = await cds.connect.to('API_SERVICE_ORDER_SRV');
        const c4codata = await cds.connect.to('c4codata');

        messaging.on('acn/sbg/btp/poc/topic', async (msg) => {
            console.log("I'm a message from one of the POC's Queue topic");

            const rowData = [
                {
                    eventData: msg.data
                }
            ]
            await INSERT(rowData).into(EventStorage);

        });

        messaging.on('acn/sbg/btp/poc', async (msg) => {
            console.log("I'm a message from the POC Queue");
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
            return serviceOrderService.run(req.query);
        });

        this.on("READ", ServiceRequestCollection, async req => {
            return c4codata.run(req.query);
        });

        return super.init()
    }
}