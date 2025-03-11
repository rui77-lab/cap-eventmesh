// srv/admin-service.js
const cds = require('@sap/cds')
module.exports = class MyService extends cds.ApplicationService {
    async init() {

        const { EventStorage } = this.entities

        const messaging = await cds.connect.to('messaging');

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

        return super.init()
    }
}