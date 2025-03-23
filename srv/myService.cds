using {acc.sbg.EventStorage as es} from '../db/eventCatalog';
using {API_SERVICE_ORDER_SRV as SO} from './external/OP_API_SERVICE_ORDER_SRV_0001';
using {c4codata} from './external/ticket';


service MyService {

    function testFunction() returns String;
    entity EventStorage             as projection on es;

    entity ServiceOrders            as
        projection on SO.A_ServiceOrder {
            ServiceOrder,
            ServiceOrderType,
            ServiceOrderDescription
        };

    entity ServiceRequestCollection as projection on c4codata.ServiceRequestCollection;
}
