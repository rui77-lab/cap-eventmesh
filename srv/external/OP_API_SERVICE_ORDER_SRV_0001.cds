/* checksum : a6749d2357f9a57599c95acb6da59651 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service API_SERVICE_ORDER_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order'
entity API_SERVICE_ORDER_SRV.A_ServiceOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction Type'
  @sap.quickinfo : 'Business Transaction Type'
  ServiceOrderType : String(4);
  @sap.label : 'Object GUID'
  @sap.quickinfo : 'GUID of a CRM Order Object'
  ServiceOrderUUID : UUID;
  @sap.label : 'Transaction Descr.'
  @sap.quickinfo : 'Transaction Description'
  ServiceOrderDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  ServiceObjectType : String(10);
  @sap.label : 'Language'
  @sap.quickinfo : 'Language Key of Description'
  Language : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Priority'
  @sap.quickinfo : 'Activity Priority'
  ServiceDocumentPriority : String(1);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Service Req. Start'
  @sap.quickinfo : 'Service Request Start Date'
  RequestedServiceStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Service Request Due'
  @sap.quickinfo : 'Service Request Due Date'
  RequestedServiceEndDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  ErlstRequestedDeliveryDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Changed At'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ServiceDocChangedDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date for a Business Transaction'
  PostingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ServiceDocumentCreationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ServiceDocumentChangedDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'User that Created the Transaction'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ServiceDocumentCreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Transaction Last Changed By'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ServiceDocumentChangedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ. Type'
  @sap.quickinfo : 'Template Type of CRM Transaction'
  ServiceDocumentTemplateType : String(1);
  @sap.label : 'Ext. Reference'
  @sap.quickinfo : 'Sold-To Party''s External Reference Number'
  PurchaseOrderByCustomer : String(35);
  @sap.display.format : 'Date'
  @sap.label : 'Reference Doc. Date'
  @sap.quickinfo : 'Reference Document Date'
  CustomerPurchaseOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Status'
  ServiceOrderIsReleased : String(1);
  ServiceOrderIsCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cancellation Status'
  ServiceOrderIsRejected : String(1);
  @sap.label : 'Business Completed'
  SrvcOrdIsBusinessCompleted : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdIsBusinessReopened : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-To Party'
  SoldToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ship-To Party'
  ShipToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill-To Party'
  BillToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payer'
  PayerParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contact Person'
  @sap.quickinfo : 'Customer Contact Person'
  ContactPerson : String(10);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Gross Value'
  @sap.quickinfo : 'Total Gross Value of Document in Document Currency'
  ServiceDocGrossAmount : Decimal(16, 3);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Total Net Value of Document in Document Currency'
  ServiceDocNetAmount : Decimal(16, 3);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Total Tax Amount'
  @sap.quickinfo : 'Total Tax Amount in Document Currency'
  ServiceDocTaxAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  ReferenceServiceRequest : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  ReferenceServiceContract : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  RefServiceOrderTemplate : String(10);
  @sap.label : 'Ref. Number'
  @sap.quickinfo : 'External Reference Number'
  ReferenceServiceOrder : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Service Team'
  @sap.quickinfo : 'Service Team (Responsibility Management)'
  RespyMgmtServiceTeam : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  RespyMgmtServiceTeamName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Global Team ID'
  @sap.quickinfo : 'Global Team ID in Responsibility Mgmt.'
  RespyMgmtGlobalTeamID : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Embargo Status'
  @sap.quickinfo : 'Embargo Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdGTSEmbargoStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Screening Status'
  @sap.quickinfo : 'Screening Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdGTSScreeningStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Legal Control Status'
  @sap.quickinfo : 'Legal Control Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdGTSLglControlStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Execution Status'
  SrvcOrdExecutionStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  PaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mandate ID'
  @sap.quickinfo : 'Unique Reference to Mandate per Payment Recipient'
  SEPAMandate : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SEPA Relevant'
  @sap.quickinfo : 'Indicator for SEPA-Relevant Transactions'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcSEPAMandateRelevance : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  WBSElementExternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Org. ID'
  @sap.quickinfo : 'Sales Organization ID'
  SalesOrganizationOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Organization'
  ServiceOrganization : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOfficeOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroupOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ent. Service Org.'
  @sap.quickinfo : 'Enterprise Service Organization'
  EnterpriseServiceOrganization : String(4);
  @sap.label : 'Key'
  @sap.quickinfo : 'Object key'
  FSMServiceCall : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cancel. Reason Code'
  @sap.quickinfo : 'Cancellation Reason Code'
  ServiceOrderRejectionReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'In-House Repair'
  @sap.quickinfo : 'Reference In-House Repair'
  ReferenceInHouseRepair : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Ref. Repair Object'
  @sap.quickinfo : 'Reference In-House Repair Item'
  ReferenceInHouseRepairItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Category'
  @sap.quickinfo : 'Activity Category (Communication Type)'
  ServiceDocumentCategory : String(3);
  ZZ1_C4CTicketID_SRH: String(10);
  to_Appointment : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdAppointment {  };
  to_Confirmation : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderConfirmation {  };
  to_Defect : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderDefect {  };
  to_Duration : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdDuration {  };
  to_InHouseRepairItem : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdInHouseRepairItem {  };
  to_Item : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderItem {  };
  to_Partner : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdPartner {  };
  to_PersonResponsible : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderPersonResp {  };
  to_PricingElement : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderPriceElement {  };
  to_ProductReferenceObject : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdProdRefObject {  };
  to_Qualification : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdQualification {  };
  to_ReferenceObject : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderRefObject {  };
  to_ReferenceServiceContract : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdRefServiceContract {  };
  to_ServiceOrdUserStatus : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrdUserStatus {  };
  to_SrvcOrdTransHistory : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdTransHistory {  };
  to_Text : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Confirmations'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderConfirmation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceConfirmation : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Defect Data Within Service Order'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderDefect {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'SubjPrfileCtgry'
  @sap.quickinfo : 'Subject Profile Category'
  key SrvcDocTypeDefectCodeProfType : String(2) not null;
  @sap.label : 'Sort Field'
  key ServiceDefectSequence : Integer not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject Profile'
  SrvcDocTypeDefectCodeProfile : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog'
  ServiceDefectCodeCatalog : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code Group'
  ServiceDefectCodeGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code'
  ServiceDefectCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema ID'
  @sap.quickinfo : 'Coherent Cat. - Aspect ID'
  ServiceDefectSchema : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema ID'
  @sap.quickinfo : 'Coherent Cat. - Aspect ID'
  ServiceDefectCategory : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Service Order Items'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.label : 'Object GUID'
  @sap.quickinfo : 'GUID of a CRM Order Object'
  ServiceOrderItemUUID : UUID;
  @sap.label : 'Object GUID'
  @sap.quickinfo : '32 Character CRM Object GUID (Converted)'
  ServiceDocumentItemCharUUID : UUID;
  @sap.label : 'Product Description'
  ServiceOrderItemDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  ServiceObjectType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'CRM Item Object Type'
  ServiceDocumentItemObjectType : String(10);
  @sap.label : 'Language'
  @sap.quickinfo : 'Short Text Language for an Item'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Name'
  @sap.quickinfo : 'Product Name Entered'
  Product : String(54);
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Order Quantity'
  @sap.quickinfo : 'CRM: Order Quantity'
  Quantity : Decimal(13, 3);
  @sap.label : 'Sales Unit'
  @sap.quickinfo : 'Unit of Measure in Which the Product Is Sold'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  IntcoRcvgSalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  MaintenanceWorkCenterPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center'
  MaintenanceWorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Relevance'
  SrvcDocItmBillingRelevance : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'DIP Profile'
  @sap.quickinfo : 'Dynamic Item Processor Profile'
  DynItemProcessorPrfl : String(8);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdItmResvnIsExisting : Boolean;
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Confirmed Quantity'
  @sap.quickinfo : 'CRM: Confirmed Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdItemReservedQuantity : Decimal(13, 3);
  @sap.label : 'Duration'
  ServiceDuration : Decimal(13, 3);
  @sap.label : 'Unit'
  @sap.quickinfo : 'Unit for Duration of Work'
  @sap.semantics : 'unit-of-measure'
  ServiceDurationUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category'
  ServiceOrderItemCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cancel. Reason Code'
  @sap.quickinfo : 'Cancellation Reason Code'
  ServiceOrdItemRejectionReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Accounting Indicator'
  BillableControl : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-To Party'
  SoldToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ship-To Party'
  ShipToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill-To Party'
  BillToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payer'
  PayerParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contact Person'
  @sap.quickinfo : 'Customer Contact Person'
  ContactPersonBusinessPartnerId : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Employee Responsible'
  PersonResponsible : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exec.Service Emp.'
  @sap.quickinfo : 'Executing Service Employee'
  ExecutingServiceEmployee : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  ServicePerformer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Status'
  ServiceOrderItemIsReleased : String(1);
  ServiceOrderItemIsCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cancellation Status'
  ServiceOrderItemIsRejected : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  ReferenceServiceContract : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  ReferenceServiceContractItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  RefServiceOrderTemplate : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  RefServiceOrderTemplateItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  ReferenceServiceRequest : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  ReferenceServiceRequestItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  ParentServiceOrderItem : String(6);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Service Planned From'
  @sap.quickinfo : 'Service Planned From Date'
  PlannedServiceStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Service Planned To'
  @sap.quickinfo : 'Service Planned To Date'
  PlannedServiceEndDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Service Req. Start'
  @sap.quickinfo : 'Service Request Start Date'
  RequestedServiceStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Service Request Due'
  @sap.quickinfo : 'Service Request Due Date'
  RequestedServiceEndDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Due By'
  SrvcDocItemSLADueByDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  ErlstRequestedDeliveryDateTime : DateTime;
  @sap.label : 'Actual Duration'
  @sap.quickinfo : 'Confirmed Duration'
  ActualServiceDuration : Decimal(7, 2);
  @sap.label : 'Time Unit'
  @sap.quickinfo : 'Time Unit for Confirmed Duration'
  @sap.semantics : 'unit-of-measure'
  ActualServiceDurationUnit : String(3);
  @sap.label : 'Status Is Active'
  SrvcContrDetnIsSpprsd : Boolean;
  @sap.label : 'Ref. Number'
  @sap.quickinfo : 'External Reference Number'
  ReferenceServiceOrderItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcDocItmPartReferenceItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcDocItmApptReferenceItem : String(6);
  @sap.label : 'Object GUID'
  @sap.quickinfo : 'GUID of a CRM Order Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcDocItmApptRefObjectUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Substitution Reason'
  @sap.quickinfo : 'Reason for Material Substitution'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialSubstitutionReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SubstituteProduct : String(40);
  @sap.label : 'Unplanned Item'
  SrvcOrdItemIsUnplanned : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Identification of a Reference Object for Items'
  FSMServiceActivity : String(32);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overtime Category'
  TimeSheetOvertimeCategory : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Service Team'
  @sap.quickinfo : 'Service Team (Responsibility Management)'
  RespyMgmtServiceTeam : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  RespyMgmtServiceTeamName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Global Team ID'
  @sap.quickinfo : 'Global Team ID in Responsibility Mgmt.'
  RespyMgmtGlobalTeamID : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Embargo Status'
  @sap.quickinfo : 'Embargo Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdItmGTSEmbargoStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Screening Status'
  @sap.quickinfo : 'Screening Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdItmGTSScreeningStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Legal Control Status'
  @sap.quickinfo : 'Legal Control Check Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcOrdItmGTSLglControlStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Execution Status'
  SrvcOrdItemExecutionStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  PaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mandate ID'
  @sap.quickinfo : 'Unique Reference to Mandate per Payment Recipient'
  SEPAMandate : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SEPA Relevant'
  @sap.quickinfo : 'Indicator for SEPA-Relevant Transactions'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SrvcSEPAMandateRelevance : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  WBSElementExternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contract Account'
  @sap.quickinfo : 'Contract Account Number'
  ContractAccount : String(12);
  to_Appointment : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItemAppointment {  };
  to_Confirmation : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderItemConfirmation {  };
  to_Defect : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderItemDefect {  };
  to_Duration : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItemDuration {  };
  to_InHouseRepairItem : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItmInHouseRepairItem {  };
  to_Partner : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItmPartner {  };
  to_PricingElement : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderItemPriceElement {  };
  to_ProductReferenceObject : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItmProdRefObject {  };
  to_Qualification : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItemQualification {  };
  to_ReferenceObject : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderItemRefObject {  };
  to_ServiceOrder : Association to API_SERVICE_ORDER_SRV.A_ServiceOrder {  };
  to_SrvcOrdItemUserStatus : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrdItemUserStatus {  };
  to_SrvcOrdItmTransHistory : Association to many API_SERVICE_ORDER_SRV.A_SrvcOrdItmTransHistory {  };
  to_Text : Association to many API_SERVICE_ORDER_SRV.A_ServiceOrderItemText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Confirmations of Service Order'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderItemConfirmation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceConfirmation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceConfirmationItem : String(6) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Defect Data Within Service Order Item'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderItemDefect {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'SubjPrfileCtgry'
  @sap.quickinfo : 'Subject Profile Category'
  key SrvcDocTypeDefectCodeProfType : String(2) not null;
  @sap.label : 'Sort Field'
  key ServiceDefectSequence : Integer not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject Profile'
  SrvcDocTypeDefectCodeProfile : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog'
  ServiceDefectCodeCatalog : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code Group'
  ServiceDefectCodeGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code'
  ServiceDefectCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema ID'
  @sap.quickinfo : 'Coherent Cat. - Aspect ID'
  ServiceDefectSchema : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema ID'
  @sap.quickinfo : 'Coherent Cat. - Aspect ID'
  ServiceDefectCategory : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Price Element of Service Order Item'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderItemPriceElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Step Number'
  key PricingProcedureStep : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter'
  key PricingProcedureCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.unit : 'ConditionQuantityUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Condition Unit'
  @sap.quickinfo : 'Condition Unit in the Document'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Reference Objects of Service Order Item'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderItemRefObject {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  key ServiceReferenceEquipment : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  key ServiceRefFunctionalLocation : String(40) not null;
  @sap.label : 'Main Ref. Object'
  @sap.quickinfo : 'Main Reference Object'
  SrvcRefObjIsMainObject : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Text of Service Order Item'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderItemText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID'
  @sap.quickinfo : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Employee Responsible for Service Order'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderPersonResp {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key PersonResponsible : String(10) not null;
  @sap.label : 'Main Partner'
  @sap.quickinfo : 'Main Partner (For Ambiguous Partner Functions)'
  CustMgmtPartnerIsMainPartner : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Price Element of Service Order'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderPriceElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Step Number'
  key PricingProcedureStep : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter'
  key PricingProcedureCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.unit : 'ConditionQuantityUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Condition Unit'
  @sap.quickinfo : 'Condition Unit in the Document'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Reference Objects of Service Order'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderRefObject {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  key ServiceReferenceEquipment : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  key ServiceRefFunctionalLocation : String(40) not null;
  @sap.label : 'Main Ref. Object'
  @sap.quickinfo : 'Main Reference Object'
  SrvcRefObjIsMainObject : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Service Order Text'
entity API_SERVICE_ORDER_SRV.A_ServiceOrderText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID'
  @sap.quickinfo : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order Item User Status'
entity API_SERVICE_ORDER_SRV.A_ServiceOrdItemUserStatus {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Object Status'
  key SrvcOrdItemUserStatus : String(5) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order User Status'
entity API_SERVICE_ORDER_SRV.A_ServiceOrdUserStatus {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Object Status'
  key SrvcOrdUserStatus : String(5) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order Appointment'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdAppointment {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Date Type'
  @sap.quickinfo : 'Technical Date Type Name'
  key SrvcDocAppointmentType : String(12) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp (UTC) of Start Time of Appointment'
  @sap.heading : ''
  SrvcDocApptStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time stamp of end of appointment'
  @sap.heading : ''
  SrvcDocApptEndDateTime : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order Duration'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdDuration {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name of Duration'
  @sap.quickinfo : 'Name for Type of Time Duration'
  key SrvcDocDurationType : String(12) not null;
  @sap.label : 'Duration Value'
  @sap.quickinfo : 'Numerical Value of Duration'
  SrvcDocDurationValue : Decimal(13, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time Unit'
  @sap.quickinfo : 'Default Value for Time Unit'
  SrvcDocDurationUnit : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'IHR Item of Service Order'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdInHouseRepairItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'In-House Repair'
  @sap.quickinfo : 'In-House Repair ID'
  key InHouseRepair : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Repair Object'
  key InHouseRepairItem : String(6) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order Item Appointment'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItemAppointment {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Date Type'
  @sap.quickinfo : 'Technical Date Type Name'
  key SrvcDocAppointmentType : String(12) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp (UTC) of Start Time of Appointment'
  @sap.heading : ''
  SrvcDocApptStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time stamp of end of appointment'
  @sap.heading : ''
  SrvcDocApptEndDateTime : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Order Item Duration'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItemDuration {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name of Duration'
  @sap.quickinfo : 'Name for Type of Time Duration'
  key SrvcDocDurationType : String(12) not null;
  @sap.label : 'Duration Value'
  @sap.quickinfo : 'Numerical Value of Duration'
  SrvcDocDurationValue : Decimal(13, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time Unit'
  @sap.quickinfo : 'Default Value for Time Unit'
  SrvcDocDurationUnit : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Srvc Order Item Qualification Details'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItemQualification {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Qualification ID'
  @sap.quickinfo : 'Object ID for Qualification'
  key SrvcDocQualification : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceDocumentItem : String(6) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid-From Date'
  @sap.quickinfo : 'Qualification Requirement Valid From'
  SrvcDocQualifnValdtyStrtDteTme : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid to Date'
  @sap.quickinfo : 'Qualification Requirement Valid To'
  SrvcDocQualifnValdtyEndDteTme : DateTime;
  @sap.label : 'Mandatory'
  @sap.quickinfo : 'Is Requirement Mandatory'
  SrvcDocQualifnIsMandatory : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Optimum Qual.Reqment'
  @sap.quickinfo : 'Optimum Qualification Requirement'
  SrvcDocQualifnProficiencyValue : String(4);
  to_ServiceOrder : Association to API_SERVICE_ORDER_SRV.A_ServiceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'IHR Item of Service Order Item'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItmInHouseRepairItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'In-House Repair'
  @sap.quickinfo : 'In-House Repair ID'
  key InHouseRepair : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Repair Object'
  key InHouseRepairItem : String(6) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Service Order Item Partner'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItmPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner func.'
  key CustMgmtPartnerFunction : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key CustMgmtBusinessPartner : String(10) not null;
  @sap.label : 'Main Partner'
  @sap.quickinfo : 'Main Partner (For Ambiguous Partner Functions)'
  CustMgmtPartnerIsMainPartner : Boolean;
  to_Address : Association to API_SERVICE_ORDER_SRV.A_SrvcOrdItmPartnerAddress {  };
  to_ServiceOrder : Association to API_SERVICE_ORDER_SRV.A_ServiceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Partner Address of Service Order Item'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItmPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner func.'
  key CustMgmtPartnerFunction : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key CustMgmtBusinessPartner : String(10) not null;
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddresseeFullName : String(80);
  @sap.label : 'City'
  CityName : String(40);
  @sap.label : 'Language Key'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'District'
  DistrictName : String(40);
  @sap.label : 'E-Mail Address'
  EmailAddress : String(241);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code and Number'
  FaxAreaCodeSubscriberNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxExtensionNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  FaxNumberCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  MobileNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  MobilePhoneCountry : String(3);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationName1 : String(40);
  @sap.label : 'Name 2'
  OrganizationName2 : String(40);
  @sap.label : 'Name 3'
  OrganizationName3 : String(40);
  @sap.label : 'Name 4'
  OrganizationName4 : String(40);
  @sap.label : 'Last Name'
  PersonFamilyName : String(40);
  @sap.label : 'First Name'
  PersonGivenName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneExtensionNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  PhoneNumberCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'Street 2'
  StreetPrefixName1 : String(40);
  @sap.label : 'Street 3'
  StreetPrefixName2 : String(40);
  @sap.label : 'Street 4'
  StreetSuffixName1 : String(40);
  @sap.label : 'Street 5'
  StreetSuffixName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Product reference object of a service order item'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItmProdRefObject {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key ServiceReferenceProduct : String(40) not null;
  @sap.label : 'Main Ref. Object'
  @sap.quickinfo : 'Main Reference Object'
  SrvcRefObjIsMainObject : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Transaction History in SRVO Item'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdItmTransHistory {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  key ServiceOrderItem : String(6) not null;
  key BusinessTransactionDocument : String(35) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'CRM Item Object Type'
  key BusinessObjectType : String(10) not null;
  key BusinessTransactionDocItem : String(10) not null;
  key BusTransDocumentIsPredecessor : Boolean not null;
  @sap.display.format : 'Date'
  BusinessTransDocCreationDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Service Order Partner'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner func.'
  key CustMgmtPartnerFunction : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key CustMgmtBusinessPartner : String(10) not null;
  @sap.label : 'Main Partner'
  @sap.quickinfo : 'Main Partner (For Ambiguous Partner Functions)'
  CustMgmtPartnerIsMainPartner : Boolean;
  to_Address : Association to API_SERVICE_ORDER_SRV.A_SrvcOrdPartnerAddress {  };
  to_ServiceOrder : Association to API_SERVICE_ORDER_SRV.A_ServiceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Partner Address of Service Order'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner func.'
  key CustMgmtPartnerFunction : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key CustMgmtBusinessPartner : String(10) not null;
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddresseeFullName : String(80);
  @sap.label : 'City'
  CityName : String(40);
  @sap.label : 'Language Key'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'District'
  DistrictName : String(40);
  @sap.label : 'E-Mail Address'
  EmailAddress : String(241);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code and Number'
  FaxAreaCodeSubscriberNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxExtensionNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  FaxNumberCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  MobileNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  MobilePhoneCountry : String(3);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationName1 : String(40);
  @sap.label : 'Name 2'
  OrganizationName2 : String(40);
  @sap.label : 'Name 3'
  OrganizationName3 : String(40);
  @sap.label : 'Name 4'
  OrganizationName4 : String(40);
  @sap.label : 'Last Name'
  PersonFamilyName : String(40);
  @sap.label : 'First Name'
  PersonGivenName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneExtensionNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  PhoneNumberCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'Street 2'
  StreetPrefixName1 : String(40);
  @sap.label : 'Street 3'
  StreetPrefixName2 : String(40);
  @sap.label : 'Street 4'
  StreetSuffixName1 : String(40);
  @sap.label : 'Street 5'
  StreetSuffixName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Product reference object of a service order'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdProdRefObject {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key ServiceReferenceProduct : String(40) not null;
  @sap.label : 'Main Ref. Object'
  @sap.quickinfo : 'Main Reference Object'
  SrvcRefObjIsMainObject : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Srvc Order Header Qualification Details'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdQualification {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Qualification ID'
  @sap.quickinfo : 'Object ID for Qualification'
  key SrvcDocQualification : String(8) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid-From Date'
  @sap.quickinfo : 'Qualification Requirement Valid From'
  SrvcDocQualifnValdtyStrtDteTme : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid to Date'
  @sap.quickinfo : 'Qualification Requirement Valid To'
  SrvcDocQualifnValdtyEndDteTme : DateTime;
  @sap.label : 'Mandatory'
  @sap.quickinfo : 'Is Requirement Mandatory'
  SrvcDocQualifnIsMandatory : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Optimum Qual.Reqment'
  @sap.quickinfo : 'Optimum Qualification Requirement'
  SrvcDocQualifnProficiencyValue : String(4);
  to_ServiceOrder : Association to API_SERVICE_ORDER_SRV.A_ServiceOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Reference Service Contracts For Service Order'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdRefServiceContract {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ReferenceServiceContract : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Transaction History in SRVO Header'
entity API_SERVICE_ORDER_SRV.A_SrvcOrdTransHistory {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceOrder : String(10) not null;
  key BusinessTransactionDocument : String(35) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  key BusinessObjectType : String(10) not null;
  key BusTransDocumentIsPredecessor : Boolean not null;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date for a Business Transaction'
  BusinessTransDocCreationDate : Date;
};

