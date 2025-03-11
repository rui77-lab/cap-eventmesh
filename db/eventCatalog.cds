namespace acc.sbg;

using {
    cuid,
    managed
} from '@sap/cds/common';


entity EventStorage : cuid, managed {

    eventData : Map;

}
