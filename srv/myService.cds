using {acc.sbg.EventStorage as es} from '../db/eventCatalog';


service MyService @(requires: 'authenticated-user') {

    function testFunction() returns String;
    entity EventStorage as projection on es;
}
