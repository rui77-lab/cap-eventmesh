/* checksum : 9156d0341e3ca4961e49874cf8b9ae18 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
service c4codata {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.label : 'Service Request Processing Type Collection'
entity c4codata.ServiceRequestProcessingTypeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'ProcessingTypeCode'
  @sap.text : 'ProcessingTypeCodeText'
  key ProcessingTypeCode : String(4) not null;
  @sap.label : 'ProcessingTypeCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  ProcessingTypeCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'ProcessingTypeCodeDescription'
  ProcessingTypeCodeDescription : String(40) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.label : 'Service Request User Life Cycle Status Collection'
entity c4codata.ServiceRequestUserLifeCycleStatusCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'UserLifeCycleStatusCode'
  @sap.text : 'UserLifeCycleStatusCodeText'
  key UserLifeCycleStatusCode : String(2) not null;
  @sap.label : 'UserLifeCycleStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  UserLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'UserLifeCycleStatusValue'
  UserLifeCycleStatusValue : String(40) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request'
entity c4codata.ServiceRequestCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ProductRecipientID'
  ProductRecipientPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Ship To UUID'
  ProductRecipientPartyUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Ship To'
  ProductRecipientPartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Incident Category ID'
  IncidentServiceIssueCategoryID : String(25);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ID'
  ID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'UUID'
  UUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ProcessingTypeCodeText'
  @sap.label : 'Type Code'
  ProcessingTypeCode : String(4);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ProcessingTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Subject'
  Name : String(255);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'DataOriginTypeCodeText'
  @sap.label : 'Data Origin Type Code'
  DataOriginTypeCode : String(3);
  @sap.label : 'Data Origin Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DataOriginTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'EscalationStatusCodeText'
  @sap.label : 'Escalation Status Code'
  EscalationStatusCode : String(2);
  @sap.label : 'Escalation Status Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  EscalationStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Serial ID'
  SerialID : String(30);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Product ID'
  ProductID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ServicePriorityCodeText'
  @sap.label : 'Priority Code'
  ServicePriorityCode : String(1);
  @sap.label : 'Priority Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServicePriorityCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ServiceRequestUserLifeCycleStatusCodeText'
  @sap.label : 'Status Code'
  ServiceRequestUserLifeCycleStatusCode : String(2);
  @sap.label : 'Status Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceRequestUserLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Requested Start Date'
  RequestedFulfillmentPeriodStartDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Requested End Date'
  RequestedFulfillmentPeriodEndDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Time With Agent'
  RequestedTotalProcessingDuration : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Time With Customer'
  RequestedTotalRequestorDuration : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Reported On'
  RequestInitialReceiptdatetimecontent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Initial Review Completed'
  RequestInProcessdatetimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Requested Closed Date/Time'
  RequestCloseddatetimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Completion Date'
  RequestFinisheddatetimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Initial Review Due'
  FirstReactionDuedatetimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Completion Due'
  CompleteDuedatetimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Warranty Start reference'
  WarrantyStartdatetimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Organisation ID'
  SalesOrganisationID : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'DivisionCodeText'
  @sap.label : 'Division Code'
  DivisionCode : String(2);
  @sap.label : 'Division Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DivisionCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'DistributionChannelCodeText'
  @sap.label : 'Distribution Channel'
  DistributionChannelCode : String(2);
  @sap.label : 'Distribution Channel Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DistributionChannelCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales unit ID'
  SalesUnitPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Service Technician Team ID'
  ServiceExecutionTeamPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Service and Support Team ID'
  ServiceSupportTeamPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Service Technician ID'
  ServicePerformerPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Assigned To ID'
  ProcessorPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'BuyerPartyID'
  BuyerPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Contact ID'
  BuyerMainContactPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Employee ID'
  ReportedForPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Installation Point ID'
  InstallationPointID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Installed Base ID'
  InstalledBaseID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Installation Point UUID'
  InstallationPointUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'WarrantyGoodwillCodeText'
  @sap.label : 'Coverage Code'
  WarrantyGoodwillCode : String(2);
  @sap.label : 'Coverage Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  WarrantyGoodwillCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Escalated On'
  EscalationTimePointDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'OnSite Due'
  OnSiteArrivalDueDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'OnSite Arrival'
  OnSiteArrivalDateTime : String(33);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service and Support Team'
  ServiceSupportTeamPartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Resolution Due'
  ResolutionDueDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Resolved On'
  ResolvedOnDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Sales Territory ID'
  SalesTerritoryID : String(6);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ResolutionDuetimeZoneCodeText'
  @sap.label : 'ResolutionDue timeZoneCode'
  ResolutionDuetimeZoneCode : String(10);
  @sap.label : 'ResolutionDue timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ResolutionDuetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'EscalationTimePointtimeZoneCodeText'
  @sap.label : 'Escalated On timeZoneCode'
  EscalationTimePointtimeZoneCode : String(10);
  @sap.label : 'Escalated On timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  EscalationTimePointtimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'OnSiteArrivalDuetimeZoneCodeText'
  @sap.label : 'Onsite Due timeZoneCode'
  OnSiteArrivalDuetimeZoneCode : String(10);
  @sap.label : 'Onsite Due timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  OnSiteArrivalDuetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RequestInProcessdatetimeZoneCodeText'
  @sap.label : 'Initial Review Completed timeZoneCode'
  RequestInProcessdatetimeZoneCode : String(10);
  @sap.label : 'Initial Review Completed timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestInProcessdatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'WarrantyStartdatetimeZoneCodeText'
  @sap.label : 'Warranty Start Ref date'
  WarrantyStartdatetimeZoneCode : String(10);
  @sap.label : 'Warranty Start Ref date Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  WarrantyStartdatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RequestCloseddatetimeZoneCodeText'
  @sap.label : 'Requested Closed Date/Time timeZoneCode'
  RequestCloseddatetimeZoneCode : String(10);
  @sap.label : 'Requested Closed Date/Time timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestCloseddatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RequestedFulfillmentPeriodStarttimeZoneCodeText'
  @sap.label : 'Requested Start Date timeZoneCode'
  RequestedFulfillmentPeriodStarttimeZoneCode : String(10);
  @sap.label : 'Requested Start Date timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestedFulfillmentPeriodStarttimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RequestedFulfillmentPeriodEndtimeZoneCodeText'
  @sap.label : 'Requested End Date timeZoneCode'
  RequestedFulfillmentPeriodEndtimeZoneCode : String(10);
  @sap.label : 'Requested End Date timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestedFulfillmentPeriodEndtimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RequestFinisheddatetimeZoneCodeText'
  @sap.label : 'Completion Date timeZoneCode'
  RequestFinisheddatetimeZoneCode : String(10);
  @sap.label : 'Completion Date timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestFinisheddatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'FirstReactionDuedatetimeZoneCodeText'
  @sap.label : 'Initilal Review Due timeZoneCode'
  FirstReactionDuedatetimeZoneCode : String(10);
  @sap.label : 'Initilal Review Due timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  FirstReactionDuedatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ResolvedOntimeZoneCodeText'
  @sap.label : 'Resolved On timeZoneCode'
  ResolvedOntimeZoneCode : String(10);
  @sap.label : 'Resolved On timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ResolvedOntimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'CompleteDuedatetimeZoneCodeText'
  @sap.label : 'Completion Due timeZoneCode'
  CompleteDuedatetimeZoneCode : String(10);
  @sap.label : 'Completion Due timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  CompleteDuedatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RequestInitialReceiptdatetimeZoneCodeText'
  @sap.label : 'Reported On timeZoneCode'
  RequestInitialReceiptdatetimeZoneCode : String(10);
  @sap.label : 'Reported On timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestInitialReceiptdatetimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'OnSiteArrivaltimeZoneCodeText'
  @sap.label : 'OnSite Arrival timeZoneCode'
  OnSiteArrivaltimeZoneCode : String(10);
  @sap.label : 'OnSite Arrival timeZoneCode Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  OnSiteArrivaltimeZoneCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Unit'
  SalesUnitPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Technician Team'
  ServiceExecutionTeamPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Technician'
  ServicePerformerPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Assigned To'
  ProcessorPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Account'
  BuyerPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Contact'
  BuyerMainContactPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Employee'
  ReportedForPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Product'
  ProductDescription : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Installation Point'
  InstallationPointDescription : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Installed Base'
  InstalledBaseDescription : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Category'
  ServiceTermsServiceIssueName : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Sales Territory'
  SalesTerritoryName : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'BuyerPartyUUID'
  BuyerPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Employee UUID'
  ReportedForPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Contact UUID'
  BuyerMainContactPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Assigned To UUID'
  ProcessorPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Service Technician UUID'
  ServicePerformerPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Service and Support UUID'
  ServiceSupportTeamPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Service Technician Team UUID'
  ServiceExecutionTeamPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Sales Unit UUID'
  SalesUnitPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Installed Base UUID'
  InstalledBaseUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Warranty UUID'
  WarrantyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Sales Territory UUID'
  SalesTerritoryUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Warranty ID'
  WarrantyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Object Category ID'
  ObjectServiceIssueCategoryID : String(25);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Cause Category ID'
  CauseServiceIssueCategoryID : String(25);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Resolution Category ID'
  ActivityServiceIssueCategoryID : String(25);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Main Ticket'
  MainTicketID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Contract ID'
  ContractID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Reported By ID'
  ReportedPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Reported By UUID'
  ReportedPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Service Category ID'
  ServiceIssueCategoryID : String(25);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ServiceRequestClassificationCodeText'
  @sap.label : 'Classification'
  ServiceRequestClassificationCode : String(2);
  @sap.label : 'Classification Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceRequestClassificationCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'CreationDateTime'
  CreationDateTime : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Partner Contact Party ID'
  PartnerContactPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Partner Contact Party UUID'
  PartnerContactPartyUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Reported By'
  ReportedPartyName : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Changed By Customer Indicator'
  ChangedByCustomerIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Last Agent Interaction'
  ResponseByProcessorDateTimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ResponseByProcessorDateTimeZoneCodeText'
  @sap.label : 'Last Agent Interaction Time Zone Code'
  ResponseByProcessorDateTimeZoneCode : String(10);
  @sap.label : 'Last Agent Interaction Time Zone Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ResponseByProcessorDateTimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Next Response Due'
  ResponseByProcessorDueDateTime : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ResponseByProcessorDueDateTimeZoneCodeText'
  @sap.label : 'Next Response Due Time Zone Code'
  ResponseByProcessorDueDateTimeZoneCode : String(10);
  @sap.label : 'Next Response Due Time Zone Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ResponseByProcessorDueDateTimeZoneCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Service Level ID'
  ServiceLevelObjectiveID : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Level'
  ServiceLevelObjectiveName : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ServiceLevelObjectiveNamelanguageCodeText'
  @sap.label : 'Service Level Language Code'
  ServiceLevelObjectiveNamelanguageCode : String(2);
  @sap.label : 'Service Level Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceLevelObjectiveNamelanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Last Customer Interaction'
  ResponseByRequesterDateTimeContent : String(33);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ResponseByRequesterDateTimeZoneCodeText'
  @sap.label : 'Last Customer Interaction Time Zone'
  ResponseByRequesterDateTimeZoneCode : String(10);
  @sap.label : 'Last Customer Interaction Time Zone Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ResponseByRequesterDateTimeZoneCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Installation Point ID V1'
  InstallationPointIDV1 : String(40);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'LastChangeDateTime'
  LastChangeDateTime : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'CreationIdentityUUID'
  CreationIdentityUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'LastChangeIdentityUUID'
  LastChangeIdentityUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Solution Category'
  SolutionCategoryName : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Cause Category'
  CauseCategoryName : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object Category'
  ObjectCategoryName : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Incident Category'
  IncidentCategoryName : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Changed By'
  LastChangedBy : String(480);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Warranty From'
  @sap.display.format : 'Date'
  WarrantyFrom : Date;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Warranty To'
  @sap.display.format : 'Date'
  WarrantyTo : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ServiceRequestLifeCycleStatusCodeText'
  @sap.label : 'ServiceRequestLifeCycleStatusCode'
  ServiceRequestLifeCycleStatusCode : String(2);
  @sap.label : 'ServiceRequestLifeCycleStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceRequestLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'RequestAssignmentStatusCodeText'
  @sap.label : 'Invoice Status'
  RequestAssignmentStatusCode : String(2);
  @sap.label : 'Invoice Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestAssignmentStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'DocumentLanguageCodeText'
  @sap.label : 'DocumentLanguageCode'
  DocumentLanguageCode : String(2);
  @sap.label : 'DocumentLanguageCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DocumentLanguageCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'SalesOrder ID'
  SalesOrderID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'SalesOrderUUID'
  SalesOrderUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'SalesOrder Item UUID'
  SalesOrderItemUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Maintenance Plan UUID'
  MaintenancePlanUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Maintenance Plan ID'
  MaintenancePlanID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Maintenance Plan Name'
  MaintenancePlanName : String(255);
  ServiceRequestAttachmentFolder : Association to many c4codata.ServiceRequestAttachmentFolderCollection {  };
  ServiceRequestBusinessTransactionDocumentReference : Association to many c4codata.ServiceRequestBusinessTransactionDocumentReferenceCollection {  };
  ServiceRequestHistoricalVersion : Association to many c4codata.ServiceRequestHistoricalVersionCollection {  };
  ServiceRequestItem : Association to many c4codata.ServiceRequestItemCollection {  };
  ServiceRequestOtherParty : Association to many c4codata.ServiceRequestOtherPartyCollection {  };
  ServiceRequestParty : Association to many c4codata.ServiceRequestPartyCollection {  };
  ServiceRequestServicePointLocation : Association to c4codata.ServiceRequestServicePointLocationCollection {  };
  ServiceRequestServiceReferenceObject : Association to many c4codata.ServiceRequestServiceReferenceObjectCollection {  };
  ServiceRequestSkillsCollection : Association to c4codata.ServiceRequestSkillsCollectionCollection {  };
  ServiceRequestSolutionProposal : Association to many c4codata.ServiceRequestSolutionProposalCollection {  };
  ServiceRequestTextCollection : Association to many c4codata.ServiceRequestTextCollectionCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Attachments'
entity c4codata.ServiceRequestAttachmentFolderCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Request ID'
  ServiceRequestID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'UUID'
  UUID : UUID not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Mime Type'
  MimeType : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Binary'
  Binary : LargeBinary;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Document Link'
  DocumentLink : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Name'
  Name : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'CategoryCodeText'
  @sap.label : 'Category Code'
  CategoryCode : String(1) not null;
  @sap.label : 'Category Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  CategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Link Web URI'
  LinkWebURI : LargeString;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created On'
  CreatedOn : Timestamp;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated On'
  LastUpdatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Notes'
entity c4codata.ServiceRequestTextCollectionCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ServiceRequestID'
  ServiceRequestID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'LanguageCodeText'
  @sap.label : 'Language Code'
  LanguageCode : String(2);
  @sap.label : 'Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  LanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Text'
  Text : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'FormattedText'
  FormattedText : LargeString not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Updated On'
  UpdatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Author Name'
  AuthorName : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author UUID'
  AuthorUUID : UUID;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'CreatedOn'
  CreatedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Text Created On'
  TextCreatedOn : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'AuthorID'
  AuthorID : String(60) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'FormattedAuthorName'
  FormattedAuthorName : String(480) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Other Party'
entity c4codata.ServiceRequestOtherPartyCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'EmployeeID'
  EmployeeID : String(60) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'RoleCategoryCodeText'
  @sap.label : 'Role Category Code'
  RoleCategoryCode : String(3) default '''100''';
  @sap.label : 'Role Category Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'Role Code'
  RoleCode : String(10);
  @sap.label : 'Role Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Request ID'
  ServiceRequestID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Other Party UUID'
  OtherPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Party ID'
  PartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'PartyTypeCodeText'
  @sap.label : 'Party Type Code'
  PartyTypeCode : String(15);
  @sap.label : 'Party Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  PartyTypeCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'LastChangeDateTime'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Solution Proposal'
entity c4codata.ServiceRequestSolutionProposalCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ID'
  ID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ExternalKnowledgeBaseArticleID'
  ExternalKnowledgeBaseArticleID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Link'
  ExternalKnowledgeBaseArticleURI : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Title'
  ExternalKnowledgeBaseArticleDescription : String(80);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ExternalKnowledgeBaseArticleDescriptionLanguageCodeText'
  @sap.label : 'Title Language Code'
  ExternalKnowledgeBaseArticleDescriptionLanguageCode : String(2);
  @sap.label : 'Title Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ExternalKnowledgeBaseArticleDescriptionLanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Content'
  Note : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'NoteLanguageCodeText'
  @sap.label : 'Content Language Code'
  NoteLanguageCode : String(2);
  @sap.label : 'Content Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  NoteLanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Request ID'
  ServiceRequestID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'CreationDateTime'
  CreationDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Item'
entity c4codata.ServiceRequestItemCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Line'
  ID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'QuantityMeasureUnitCodeText'
  @sap.label : 'Unit of Measure'
  QuantityMeasureUnitCode : String(3);
  @sap.label : 'Unit of Measure Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  QuantityMeasureUnitCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'UserServiceTransactionProcessingTypeCodeText'
  @sap.label : 'Processing'
  UserServiceTransactionProcessingTypeCode : String(4);
  @sap.label : 'Processing Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  UserServiceTransactionProcessingTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Product ID'
  ProductID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Service Technician ID'
  ServicePerformerPartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'WarrantyGoodwillCodeText'
  @sap.label : 'Coverage'
  WarrantyGoodwillCode : String(2);
  @sap.label : 'Coverage Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  WarrantyGoodwillCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'DescriptionLanguageCodeText'
  @sap.label : 'Description Language Code'
  DescriptionLanguageCode : String(2);
  @sap.label : 'Description Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DescriptionLanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Request ID'
  ServiceRequestID : String(35);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Technician'
  ServicePerformerPartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Product Description'
  ProductDescription : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Product UUID'
  ProductUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'false'
  @sap.label : 'Service Technician UUID'
  ServicePerformerPartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ServiceRequestExecutionLifeCycleStatusCodeText'
  @sap.label : 'Work Progress'
  ServiceRequestExecutionLifeCycleStatusCode : String(2);
  @sap.label : 'Work Progress Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceRequestExecutionLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Planned Quantity'
  PlannedQuantity : Decimal(31, 14);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Requested End'
  RequestedEndDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Requested Start'
  RequestedStartDateTime : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Actual Quantity'
  ActualQuantity : Decimal(31, 14);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Actual Start'
  ActualStartDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Actual End'
  ActualEndDateTime : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Parent Item ID'
  ParentItemID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Contract ID'
  ContractID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Contract Item ID'
  ContractItemID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ProductIDExternalKey'
  ProductIDExternalKey : String(100);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ExternalFollowUpProcessingReleaseStatusCodeText'
  @sap.label : 'ExternalFollowUpProcessingReleaseStatusCode'
  ExternalFollowUpProcessingReleaseStatusCode : String(2);
  @sap.label : 'ExternalFollowUpProcessingReleaseStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ExternalFollowUpProcessingReleaseStatusCodeText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Planned Start'
  PlannedStartDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Planned End'
  PlannedEndDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
  ServiceRequestItemTextCollection : Association to many c4codata.ServiceRequestItemTextCollectionCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Item Notes'
entity c4codata.ServiceRequestItemTextCollectionCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Type Code'
  TypeCode : String(5);
  @sap.label : 'Type Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'LanguageCodeText'
  @sap.label : 'Language Code'
  LanguageCode : String(2);
  @sap.label : 'Language Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  LanguageCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Text'
  Text : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created On'
  CreatedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Updated On'
  UpdatedOn : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Created By'
  CreatedBy : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Last Updated By'
  LastUpdatedBy : String(80);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author Name'
  AuthorName : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Author UUID'
  AuthorUUID : UUID;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  ServiceRequestItem : Association to c4codata.ServiceRequestItemCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Location'
entity c4codata.ServiceRequestServicePointLocationCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'RoleCategoryCodeText'
  @sap.label : 'Role Category Code'
  RoleCategoryCode : String(3);
  @sap.label : 'Role Category Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCategoryCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'DeterminationMethodCodeText'
  @sap.label : 'Determination Method Code'
  DeterminationMethodCode : String(2);
  @sap.label : 'Determination Method Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DeterminationMethodCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'Role Code'
  RoleCode : String(10);
  @sap.label : 'Role Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Request ID'
  ServiceRequestID : String(35);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
  ServiceRequestServicePointLocationAddress : Association to c4codata.ServiceRequestServicePointLocationAddressCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.label : 'Service Request Location Address'
entity c4codata.ServiceRequestServicePointLocationAddressCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Phone'
  Phone : String(350);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Email'
  Email : String(765);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Fax'
  Fax : String(350);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Mobile'
  Mobile : String(350);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Web Site'
  WebSite : String(1280);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'LanguageText'
  @sap.label : 'Language'
  Language : String(2);
  @sap.label : 'Language Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  LanguageText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'CountryText'
  @sap.label : 'Country'
  Country : String(3);
  @sap.label : 'Country Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  CountryText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Address Line 1'
  AddressLine1 : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Address Line 2'
  AddressLine2 : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'House Number'
  HouseNumber : String(100);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Street'
  Street : String(360);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Address Line 4'
  AddressLine4 : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Address Line 5'
  AddressLine5 : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'City'
  City : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'StateText'
  @sap.label : 'State'
  State : String(6);
  @sap.label : 'State Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  StateText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'PostalCodeText'
  @sap.label : 'Postal Code'
  PostalCode : String(100);
  @sap.label : 'Postal Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  PostalCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'District'
  District : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'County'
  County : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'PO Box'
  POBox : String(100);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'POBoxPostalCodeText'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(100);
  @sap.label : 'PO Box Postal Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  POBoxPostalCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Building'
  BuildingID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Floor'
  FloorID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Room'
  RoomID : String(10);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'AdditionalHouseID'
  AdditionalHouseID : String(100);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'POBoxIndicator'
  POBoxIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'POBoxDeviatingCityName'
  POBoxDeviatingCityName : String(240);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'POBoxDeviatingRegionCodeText'
  @sap.label : 'POBoxDeviatingRegionCode'
  POBoxDeviatingRegionCode : String(6);
  @sap.label : 'POBoxDeviatingRegionCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  POBoxDeviatingRegionCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'POBoxDeviatingCountryCodeText'
  @sap.label : 'POBoxDeviatingCountryCode'
  POBoxDeviatingCountryCode : String(3);
  @sap.label : 'POBoxDeviatingCountryCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  POBoxDeviatingCountryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TimeZoneCodeText'
  @sap.label : 'TimeZoneCode'
  TimeZoneCode : String(10);
  @sap.label : 'TimeZoneCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TimeZoneCodeText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request BTD Reference'
entity c4codata.ServiceRequestBusinessTransactionDocumentReferenceCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'TypeCodeText'
  @sap.label : 'Activity Type'
  TypeCode : String(15);
  @sap.label : 'Activity Type Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  TypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'Role Code'
  RoleCode : String(3);
  @sap.label : 'Role Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ID'
  ID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Business System ID'
  BusinessSystemID : String(32);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'UUID'
  UUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ItemUUID'
  ItemUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'ItemTypeCodeText'
  @sap.label : 'ItemTypeCode'
  ItemTypeCode : String(5);
  @sap.label : 'ItemTypeCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ItemTypeCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ItemID'
  ItemID : String(10);
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Product'
entity c4codata.ServiceRequestServiceReferenceObjectCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Installation Point ID'
  InstallationPointID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'InstallationPointUUID'
  InstallationPointUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'InstalledBaseID'
  InstalledBaseID : String(40);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'InstalledBaseUUID'
  InstalledBaseUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Main'
  MainIndicator : Boolean;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'ProductID'
  ProductID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'SerialID'
  SerialID : String(30);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Service Request ID'
  ServiceRequestID : String(35);
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ProductIDExternalKey'
  ProductIDExternalKey : String(100);
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Party'
entity c4codata.ServiceRequestPartyCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Party ID'
  PartyID : String(60);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'PartyUUID'
  PartyUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCategoryCodeText'
  @sap.label : 'Role Category Code'
  RoleCategoryCode : String(3);
  @sap.label : 'Role Category Code Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCategoryCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'RoleCodeText'
  @sap.label : 'Role'
  RoleCode : String(10);
  @sap.label : 'Role Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RoleCodeText : LargeString;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Main'
  Main : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'DeterminationMethodCodeText'
  @sap.label : 'Determination Method'
  DeterminationMethodCode : String(2);
  @sap.label : 'Determination Method Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  DeterminationMethodCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Party Name'
  PartyName : String(480);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Phone'
  Phone : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Mobile'
  Mobile : String(40);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'E-Mail'
  Email : String(255);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'EntityLastChangedOn'
  EntityLastChangedOn : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'true'
@sap.updatable : 'true'
@sap.deletable : 'true'
@sap.label : 'Service Request Skills Collection'
entity c4codata.ServiceRequestSkillsCollectionCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'SkillID'
  SkillID : String(20);
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.label : 'Mandatory'
  Mandatory : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'CreationDateTime'
  CreationDateTime : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'CreationIdentityUUID'
  CreationIdentityUUID : UUID;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'LastChangeDateTime'
  LastChangeDateTime : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'LastChangeIdentityUUID'
  LastChangeIdentityUUID : UUID;
  @sap.creatable : 'true'
  @sap.updatable : 'true'
  @sap.filterable : 'true'
  @sap.text : 'SkillSourceText'
  @sap.label : 'SkillSource'
  SkillSource : String(2);
  @sap.label : 'SkillSourceText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  SkillSourceText : LargeString;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Entity Last Changed On'
  EntityLastChangedOn : Timestamp;
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.label : 'Service Request History Version Collection'
entity c4codata.ServiceRequestHistoricalVersionCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Object ID'
  key ObjectID : String(70) not null;
  @sap.creatable : 'true'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Parent Object ID'
  ParentObjectID : String(70);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  @sap.label : 'Entity Tag'
  ETag : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'SalesAndServiceBusinessAreaServiceOrganisationUUID'
  SalesAndServiceBusinessAreaServiceOrganisationUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ProcessorPartyUUID'
  ProcessorPartyUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ServiceSupportTeamPartyUUID'
  ServiceSupportTeamPartyUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ServiceTechnicianPartyUUID'
  ServiceTechnicianPartyUUID : UUID;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ServiceTermsServiceRequestUserLifeCycleStatusCodeText'
  @sap.label : 'ServiceTermsServiceRequestUserLifeCycleStatusCode'
  ServiceTermsServiceRequestUserLifeCycleStatusCode : String(2);
  @sap.label : 'ServiceTermsServiceRequestUserLifeCycleStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceTermsServiceRequestUserLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ServiceTermsServicePriorityCodeText'
  @sap.label : 'ServiceTermsServicePriorityCode'
  ServiceTermsServicePriorityCode : String(1);
  @sap.label : 'ServiceTermsServicePriorityCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceTermsServicePriorityCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ServiceIssueCategoryID'
  ServiceIssueCategoryID : String(25);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'EndDateTime'
  EndDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'StartDateTime'
  StartDateTime : Timestamp;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ConfirmationIssuingStatusCodeText'
  @sap.label : 'ConfirmationIssuingStatusCode'
  ConfirmationIssuingStatusCode : String(2);
  @sap.label : 'ConfirmationIssuingStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ConfirmationIssuingStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'EscalationStatusCodeText'
  @sap.label : 'EscalationStatusCode'
  EscalationStatusCode : String(2);
  @sap.label : 'EscalationStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  EscalationStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'RequestAssignmentStatusCodeText'
  @sap.label : 'RequestAssignmentStatusCode'
  RequestAssignmentStatusCode : String(2);
  @sap.label : 'RequestAssignmentStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  RequestAssignmentStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'ServiceRequestLifeCycleStatusCodeText'
  @sap.label : 'ServiceRequestLifeCycleStatusCode'
  ServiceRequestLifeCycleStatusCode : String(2);
  @sap.label : 'ServiceRequestLifeCycleStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  ServiceRequestLifeCycleStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.text : 'SolutionProposalStatusCodeText'
  @sap.label : 'SolutionProposalStatusCode'
  SolutionProposalStatusCode : String(2);
  @sap.label : 'SolutionProposalStatusCodeText'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  SolutionProposalStatusCodeText : LargeString;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'ServiceIssueCategoryCatalogueID'
  ServiceIssueCategoryCatalogueID : String(25);
  ServiceRequest : Association to c4codata.ServiceRequestCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestAttachmentFolderCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestAttachmentFolderTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestBusinessTransactionDocumentReferenceItemTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestBusinessTransactionDocumentReferenceRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestBusinessTransactionDocumentReferenceTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestCompleteDuedatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestDataOriginTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestDistributionChannelCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestDivisionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestDocumentLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestEscalationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestEscalationTimePointtimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestFirstReactionDuedatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionConfirmationIssuingStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionEscalationStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionRequestAssignmentStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionServiceRequestLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionServiceTermsServicePriorityCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionServiceTermsServiceRequestUserLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestHistoricalVersionSolutionProposalStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemDescriptionLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemExternalFollowUpProcessingReleaseStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemQuantityMeasureUnitCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemServiceRequestExecutionLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemTextCollectionLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemTextCollectionTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemUserServiceTransactionProcessingTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestItemWarrantyGoodwillCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestLocationAddressPOBoxDeviatingCountryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestLocationAddressTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestOnSiteArrivalDuetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestOnSiteArrivaltimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestOtherPartyPartyTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestOtherPartyRoleCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestOtherPartyRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestPartnerContactPartyRoleCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestPartyDeterminationMethodCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestPartyRoleCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestPartyRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestProcessingTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestProcessingTypeProcessingTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestAssignmentStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestCloseddatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestFinisheddatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestInProcessdatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestInitialReceiptdatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestedFulfillmentPeriodEndtimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestRequestedFulfillmentPeriodStarttimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestResolutionDuetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestResolvedOntimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestResponseByProcessorDateTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestResponseByProcessorDueDateTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestResponseByRequesterDateTimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServiceLevelObjectiveNamelanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationAddressCountryCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationAddressLanguageCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationAddressPOBoxPostalCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationAddressPostalCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationDeterminationMethodCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationRoleCategoryCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationRoleCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePriorityCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServiceRequestClassificationCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServiceRequestLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServiceRequestUserLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestSkillsCollectionSkillSourceCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestSolutionProposalExternalKnowledgeBaseArticleDescriptionLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestSolutionProposalNoteLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestTextCollectionLanguageCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestTextCollectionTypeCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestUserLifeCycleStatusUserLifeCycleStatusCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestWarrantyGoodwillCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestWarrantyStartdatetimeZoneCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestLocationAddressPOBoxDeviatingRegionCodeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.semantics : 'fixed-values'
entity c4codata.ServiceRequestServicePointLocationAddressStateCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Context'
  key Context : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Code'
  key Code : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'true'
  @sap.label : 'Description'
  Description : LargeString not null;
};

@cds.external : true
function c4codata.GetServiceRequestProcessingTypes(
  isCustomerSupport : Boolean,
  isEmployeeSupport : Boolean
) returns many c4codata.ServiceRequestProcessingTypeCollection;

@cds.external : true
function c4codata.GetServiceRequestUserLifeCycleStatus(
  processingType : LargeString,
  currentUserStatus : LargeString,
  objectID : LargeString
) returns many c4codata.ServiceRequestUserLifeCycleStatusCollection;

@cds.external : true
action c4codata.TicketDepersonalize(
  ObjectID : LargeString
) returns c4codata.ServiceRequestCollection;

