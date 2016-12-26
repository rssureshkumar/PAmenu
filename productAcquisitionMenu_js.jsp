<%@ page contentType="text/javascript" %>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>


<%
    // Get the main.url.pattern intialization parameter from the web.xml file.
    // This variable will be equal to the URL pattern of the web application server.
    String mainURLPattern = this.getServletConfig().getServletContext().getInitParameter("main.url.pattern");
    String hrefStart = request.getContextPath() + mainURLPattern;
    String contextPath = request.getContextPath();

    String itemContextPath = this.getServletConfig().getServletContext().getInitParameter("itemContextPath");
    String itemAuditContextPath = this.getServletConfig().getServletContext().getInitParameter("itemAuditContextPath");
    String newItemRequestContextPath = this.getServletConfig().getServletContext().getInitParameter("newItemRequestContextPath");
    String itemMaintenanceContextPath = this.getServletConfig().getServletContext().getInitParameter("itemMaintenanceContextPath");
    String vendorContextPath = this.getServletConfig().getServletContext().getInitParameter("vendorContextPath");
    String vendorMaintenanceContextPath = this.getServletConfig().getServletContext().getInitParameter("vendorMaintenanceContextPath");
    String loadBuildingContextPath = this.getServletConfig().getServletContext().getInitParameter("loadBuildingContextPath");
%>

/*
     Initialize and render the MenuBar when its elements are ready 
     to be scripted.
*/
var resource_en= {
 	"itemCenter": "Item Center",
 	"gdsnCatalogSearch": "GDSN Catalog Search",
 	"initiateNewItem": "Initiate New Item",
 	"newItemRequestWorkflowDashboard": "New Item Request Workflow Dashboard",
 	"item": "Item",
 	"itemSearch": "Item Search",
 	"itemsByDivision": "Items by Division",
 	"itemsByVendor": "Items by Vendor",
 	"findItemsByVendorItemCode": "Find Items by Vendor Item Code",
 	"itemMaintenance": "Item Maintenance",
 	"massUpdateBuyMultiples": "Mass Update Buy Multiples",
 	"massUpdateSellNegative": "Mass Update Sell Negative",
 	"itemGTINMaintenance": "Item GTIN Maintenance",
 	"specialOrderItemMaintenance": "Special Order Item Maintenance",
 	"itemsByCustomer": "Items By Customer",
 	"marketplaceItemMaintenance": "Marketplace Item Maintenance",
 	"approveNewItems": "Approve New Items",
 	"viewNewItems": "View New Items",
 	"requestNewItem": "Request New Item",
 	"createNewItem": "RCreate New Item",
 	"newItemSetup": "RNew Item Setup",
 	"itemClassHierarchy": "RItem Class Hierarchy",
 	"itemClassMembershipMaintenance": "RItem Class Membership Maintenance",
 	"itemClassMembershipMaintenanceByClass": "Item Class Membership Maintenance by Class",
 	"itemClassMembershipReporting": "Item Class Membership Reporting",
 	"serviceItemMaintenance": "Service Item Maintenance",
 	"displaySequenceMaintenance": "Display Sequence Maintenance",
 	"negotiationGroupMaintenance": "Negotiation Group Maintenance",
 	"qaDiscrepancies": "QA Discrepancies",
 	"itemAuditInformation": "Item Audit Information",
 	"newItemAuditInformation": "New Item Audit Information",
 	"massTransferVendorProduct": "Mass Transfer Vendor Product",
 	"gfsOrganizationalStructure": "GFS Organizational Structure",
	"sellNegativeMaintenance":"Sell Negative Maintenance",
	"subGroupMaintenance":"Sub Group Maintenance",
	"productHistoryInquiry":"Product History Inquiry",
	"itemDepositByState":"Item Deposit by State",
	"dataCleansingTool":"Data Cleansing Tool",
	"transitionItem":"Transition Item",
	"srmDiscrepancy":"SMR Discrepancy",
	"productSearchTermMaintenance":"Product Search Term Maintenance",
	"excessPunch":"Excess Punch",
	"imageDefaults":"Image Defaults",
	"integrationSources":"Integration Sources",
	"itemStagingControl":"Item Staging Control",
	"itemCrossReference":"Item Cross Reference",
	"vendor":"Vendor",
	"vendorLookup":"Vendor Lookup",
	"maintainVendorLocation":"Maintain Vendor Location",
	"maintainVendorLogistics":"Maintain Vendor Logistics",
	"maintainVendorBuyers":"Maintain Vendor Buyers",
	"maintainVendorLevel":"MaintainVendorLevel",
	"maintainVendorBroker":"Maintain Vendor Broker",
	"maintainVendorContacts":"Maintain Vendor Contacts",
	"maintainVendorTerms":"Maintain Vendor Terms",
	"maintainBroker":"Maintain Broker",
	"maintainBuyer":"Maintain Buyer",
	"buyerSalesOrgAssignment":"Buyer-Sales Org Assignment",
	"vendorAudit":"Vendor Audit",
	"vendorEComMaintenance":"Vendor eComMaintenance",
	"vendorsByEDICode":"VendorsByEDICode",
	"outsideVendorAccess":"Outside Vendor Access",
	"inboundVendorReporting":"Inbound Vendor Reporting",
	"vendorCrossReference":"Vendor Cross Reference",
	"vendorStagingControl":"vendorStagingControl",
	"loadBuild":"Load Build",
	"dcToDc":"DCtoDC",
	"comboLoads":"Combo Loads",
	"barcode":"Barcode",
	"barcodeInquiry":"Barcode Inquiry",
	"barcodesByVendor":"Barcodes by Vendor",
	"reports":"Reports",
	"newItemSetupDataQualityReport":"New Item Setup Data Quality Report",
	"sellNegativeReport":"Sell Negative Report",
	"tempOutReport":"Temp Out Report",
 };
 
  
 var resource_fr={
 	"itemCenter": "Centre d'article",
 	"gdsnCatalogSearch": "GDSN Catalogue Recherche",
 	"initiateNewItem": "Initier un nouvel élément",
 	"newItemRequestWorkflowDashboard": "Nouvel élément Demande de workflow Dashboard",
 	"item": "Article",
 	"itemSearch": "Point Recherche",
 	"itemsByDivision": "Articles par division",
 	"itemsByVendor": "Articles par fournisseur",
 	"findItemsByVendorItemCode": "Trouver des articles par code fournisseur d'objet",
 	"itemMaintenance": "Point Maintenance",
 	"massUpdateBuyMultiples": "Mass mise à jour Acheter Multiples",
 	"massUpdateSellNegative": "Mise à jour massive Vente négative",
 	"itemGTINMaintenance": "GTIN le maintien de l'article",
 	"specialOrderItemMaintenance": "Article d'ordre spécial Maintenance",
 	"itemsByCustomer": "Articles par le client",
 	"marketplaceItemMaintenance": "Point du marché Maintenance",
 	"approveNewItems": "Approuver Nouveautés",
 	"viewNewItems": "Voir Nouveaux Articles",
 	"requestNewItem": "Demander un nouvel élément",
 	"createNewItem": "RCréer un nouvel élément",
 	"newItemSetup": "RNouvelle configuration de l'article",
 	"itemClassHierarchy": "RPoint Hiérarchie des classes",
 	"itemClassMembershipMaintenance": "RItem Class Adhésion Maintenance",
 	"itemClassMembershipMaintenanceByClass": "Item Class Composition Maintenance par classe",
 	"itemClassMembershipReporting": "Point Classe de déclaration d'adhésion",
 	"serviceItemMaintenance": "Entretien des articles de service",
 	"displaySequenceMaintenance": "Maintenance des séquences d'affichage",
 	"negotiationGroupMaintenance": "Entretien du groupe de négociation",
 	"qaDiscrepancies": "Disparités de QA",
 	"itemAuditInformation": "Éléments de vérification",
 	"newItemAuditInformation": "Nouvelle information d'audit d'article",
 	"massTransferVendorProduct": "Produit de fournisseur de transfert de masse",
 	"gfsOrganizationalStructure": "Structure organisationnelle du SFP",
	"sellNegativeMaintenance":"Vendre une maintenance négative",
	"subGroupMaintenance":"Maintenance du sous groupe",
	"productHistoryInquiry":"Historique du produit",
	"itemDepositByState":"Article Dépôt par État",
	"dataCleansingTool":"Outil de nettoyage des données",
	"transitionItem":"Article de transition",
	"srmDiscrepancy":"SMR Discrepancy",
	"productSearchTermMaintenance":"Maintenance du terme de recherche de produit",
	"excessPunch":"Excédent de poinçonnage",
	"imageDefaults":"Valeurs par défaut de l'image",
	"integrationSources":"Sources d'intégration",
	"itemStagingControl":"Contrôle d'étagement des articles",
	"itemCrossReference":"Référence à l'article",
	"vendor":"Vendeur",
	"vendorLookup":"Recherche de fournisseurs",
	"maintainVendorLocation":"Conserver l'emplacement du fournisseur",
	"maintainVendorLogistics":"Entretien de la logistique des fournisseurs",
	"maintainVendorBuyers":"Entretien des acheteurs fournisseurs",
	"maintainVendorLevel":"Maintenir le niveau du fournisseur",
	"maintainVendorBroker":"Entretien de courtier vendeur",
	"maintainVendorContacts":"Conserver les contacts des fournisseurs",
	"maintainVendorTerms":"Conserver les termes du fournisseur",
	"maintainBroker":"Maintenir le courtier",
	"maintainBuyer":"Maintenir l'acheteur",
	"buyerSalesOrgAssignment":"Acheteur-Répartition des ventes",
	"vendorAudit":"Vérification des fournisseurs",
	"vendorEComMaintenance":"Fournisseur eComMaintenance",
	"vendorsByEDICode":"Fournisseurs Par code EDI",
	"outsideVendorAccess":"Accès extérieur",
	"inboundVendorReporting":"Rapports des fournisseurs entrants",
	"vendorCrossReference":"Rapports des fournisseurs entrants",
	"vendorStagingControl":"Contrôle de l'étagement des fournisseurs",
	"loadBuild":"Charger la construction",
	"dcToDc":"DCtoDC",
	"comboLoads":"Combo Charges",
	"barcode":"code à barre",
	"barcodeInquiry":"Enquête sur les codes à barres",
	"barcodesByVendor":"Codes à barres par vendeur",
	"reports":"Rapports",
	"newItemSetupDataQualityReport":"Nouveau rapport sur la qualité des données",
	"sellNegativeReport":"Vendre un rapport négatif",
	"tempOutReport":"Rapport de temporisation",
 };

var aSubmenuData= [

	<authz:authorize ifAllGranted="ROLE_NEWITEMINQUIREREQUEST">
	{
		text: "itemCenter", 
		url: "<%=response.encodeURL("/itemMaintenance/main")%>", 
		submenu: {
			id: "itemRequest",
			zindex:140,
			itemdata: [ 
				{ text: "gdsnCatalogSearch" , url: "<%=response.encodeURL(newItemRequestContextPath + "#/gdsnCatalogSearch")%>" },
				{ text: "initiateNewItem" , url: "<%=response.encodeURL(newItemRequestContextPath + "#/newItemRequest")%>" },
				{ text: "newItemRequestWorkflowDashboard", url:"<%=response.encodeURL(newItemRequestContextPath + "#/workflowDashboard")%>" },
			]
		}
	},
	</authz:authorize>
	
	<authz:authorize ifAnyGranted="ACTION_ENTERITEMSEARCH.DO,ACTION_ENTERITEMSEARCHBYCODE.DO,ACTION_ITEM_FINDITEMBYDESCRIPTION,ACTION_ITEM_FINDITEMBYDESCRIPTIONWITHVENDORS,ACTION_ITEMSBYDIVISION.DO,ACTION_ITEMSBYVENDOR.DO,ACTION_ITEMSBYVENDORITEMCODE.DO,ACTION_ITEM_MAINTAINMARKETINGINFORMATION,ACTION_ITEM_ITEMINQUIRYMARKETING,ACTION_MAINTAINSPECIALORDERITEM.DO,ACTION_LOOKUPPROPRIETARYITEMSBYCUSTOMER.DO,ACTION_ITEM_MAINTAINMPINFORMATIONMARKETING,ACTION_ITEM_APPROVEITEM,ACTION_ITEM_MAINTAINNEWITEM,ACTION_REQUESTNEWITEMINITIAL.DO,ACTION_CREATENEWITEMINITIAL.DO,ACTION_ITEM_INITIALNEWITEMSETUP,ACTION_MAINTAINITEMCLASSMEMBERSHIP.DO,ACTION_INQUIREITEMCLASSMEMBERSHIP.DO,ROLE_INQUIREITEMCLASSMEMBERSHIP,ACTION_ITEM_GETSERVICEITEMS,ACTION_ITEM_MAINTAINITEMDISPLAYSEQUENCE,ACTION_ITEM_MAINTAINPURCHASINGNEGOTIATIONGROUPTYPES,ACTION_ITEM_ITEMINQUIRYNEGOTIATIONGROUPTYPES,ACTION_ITEM_LOOKUPQADISCREPANCIES,ACTION_ITEM_EXCESSPUNCH,ACTION_REQUESTITEMAUDIT.DO,ACTION_MASSTRANSFERVENDORPRODUCT.DO,ACTION_ORGSTRUCTURE.DO,ACTION_MAINTAINSELLNEGATIVE.DO,ACTION_ITEM_ITEMCATEGORYMAINT,ACTION_PRODUCTHISTORYINQUIRY.DO,ACTION_VIEWITEMDEPOSITBYSTATE.DO,ACTION_DATACLEANSINGUPLOADTOOL.DO,ACTION_FINDITEMTRANSITION.DO,ACTION_PRODUCTSEARCHTERMMAINT.DO,ACTION_PRODUCTSEARCHTERMVIEW.DO">
	{
		text: "item", 
		url: "<%=response.encodeURL("/itemMaintenance/main")%>", 
		submenu: {
			id: "item",
			zindex:140, 
			itemdata: [
				{ text: "itemSearch", url: "<%=response.encodeURL(itemContextPath + "/search/")%>" },
				<authz:authorize ifAllGranted="ACTION_ITEMSBYDIVISION.DO">
				{ text: "itemsByDivision", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/itemsByDivision.do")%>" },
				</authz:authorize>
				
				<authz:authorize ifAllGranted="ACTION_ITEMSBYVENDOR.DO">
				{ text: "itemsByVendor", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/itemsByVendor.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEMSBYVENDORITEMCODE.DO">
				{ text: "findItemsByVendorItemCode", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/itemsByVendorItemCode.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_MAINTAINMARKETINGINFORMATION">
				{ text: "itemMaintenance", url: "<%=response.encodeURL("/item/maintenance/maintainMarketingInfo.action?itemMaintArea=Marketing")%>" },
				</authz:authorize>
				<authz:authorize ifNotGranted="ACTION_ITEM_MAINTAINMARKETINGINFORMATION">
					<authz:authorize ifAllGranted="ACTION_ITEM_ITEMINQUIRYMARKETING">
				{ text: "itemMaintenance", url: "<%=response.encodeURL(itemContextPath + "/maintenance/maintainMarketingInfo.action?itemMaintArea=Marketing")%>" },
					</authz:authorize>
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_CANVIEWMASSUPDATEBUYMULTIPLE">
				{ text: "massUpdateBuyMultiples", url: "<%=response.encodeURL(itemContextPath + "/buyMultiples/massUpdateBuyMultiples")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_CANVIEWMASSUPDATEBUYMULTIPLE">
				{ text: "massUpdateSellNegative", url: "<%=response.encodeURL(itemContextPath + "/sellNegativeMassUpdate")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_INQUIREGTIN">
				<%if( request.getParameter("itemCode") !=null) { %>
					{ text: "itemGTINMaintenance", url: "<%=response.encodeURL(itemContextPath + "/gtin/gtin.action?offeringId=" + request.getParameter("itemCode"))%>" },
				<%} else { %>
					{ text: "itemGTINMaintenance", url: "<%=response.encodeURL(itemContextPath + "/gtin/")%>" },
				<%}%>
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_MAINTAINSPECIALORDERITEM.DO">
				{ text: "specialOrderItemMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/maintainSpecialOrderItem.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_LOOKUPPROPRIETARYITEMSBYCUSTOMER.DO">
				{ text: "itemsByCustomer", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/lookupProprietaryItemsByCustomer.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_MAINTAINMPINFORMATIONMARKETING">
				{ text: "marketplaceItemMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/maintainMpInformationMarketing?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_APPROVEITEM">
				{ text: "approveNewItems", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/approveItem?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_MAINTAINNEWITEM">
				{ text: "viewNewItems", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/maintainNewItem?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_REQUESTNEWITEMINITIAL.DO">
				{ text: "requestNewItem", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/requestNewItemInitial.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_CREATENEWITEMINITIAL.DO">
				{ text: "createNewItem", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/createNewItemInitial.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_INITIALNEWITEMSETUP">
				{ text: "newItemSetup", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/newItemSetup?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_INQUIREITEMHIERARCHY">
				{ text: "itemClassHierarchy", url: "<%=response.encodeURL(itemContextPath + "/hierarchy/")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_MAINTAINITEMCLASSMEMBERSHIP.DO">
				{ text: "itemClassMembershipMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/maintainItemClassMembership.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_MAINTAINITEMCLASS">						
				{ text: "itemClassMembershipMaintenanceByClass", url: "<%=response.encodeURL(itemContextPath + "/hierarchy/members.action")%>" },		
				</authz:authorize>
				<authz:authorize ifNotGranted="ACTION_ITEM_MAINTAINITEMCLASS">
					<authz:authorize ifAnyGranted="ACTION_INQUIREITEMCLASSMEMBERSHIP.DO,ROLE_INQUIREITEMCLASSMEMBERSHIP">
				{ text: "itemClassMembershipReporting", url: "<%=response.encodeURL(itemContextPath + "/hierarchy/members.action")%>" },
					</authz:authorize>
				</authz:authorize>
				<authz:authorize ifNotGranted="ACTION_MAINTAINITEMCLASSMEMBERSHIP.DO">
					<authz:authorize ifAnyGranted="ACTION_INQUIREITEMCLASSMEMBERSHIP.DO,ROLE_INQUIREITEMCLASSMEMBERSHIP">
				{ text: "itemClassMembershipMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/inquireItemClassMembership.do")%>" },
					</authz:authorize>
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_GETSERVICEITEMS">
				{ text: "serviceItemMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/getServiceItems")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_MAINTAINITEMDISPLAYSEQUENCE">
				{ text: "displaySequenceMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/maintainItemDisplaySequence")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_MAINTAINPURCHASINGNEGOTIATIONGROUPTYPES">
				{ text: "negotiationGroupMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/maintainPurchasingNegotiationGroupTypes?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifNotGranted="ACTION_ITEM_MAINTAINPURCHASINGNEGOTIATIONGROUPTYPES">
					<authz:authorize ifAllGranted="ACTION_ITEM_ITEMINQUIRYNEGOTIATIONGROUPTYPES">
				{ text: "negotiationGroupMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/itemInquiryNegotiationGroupTypes?shouldHandleRequest=false")%>" },
					</authz:authorize>
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_LOOKUPQADISCREPANCIES">				
				{ text: "qaDiscrepancies", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/lookupQADiscrepancies?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_REQUESTITEMAUDIT.DO">
				{ text: "itemAuditInformation", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/requestItemAudit.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ROLE_ITEM_AUDIT_VIEWER">
				{ text: "newItemAuditInformation", url: "<%=response.encodeURL(itemAuditContextPath + "/")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_MASSTRANSFERVENDORPRODUCT.DO">
				{ text: "massTransferVendorProduct", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/massTransferVendorProduct.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ORGSTRUCTURE.DO">
				{ text: "gfsOrganizationalStructure", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/orgStructure.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_MAINTAINSELLNEGATIVE.DO">
				{ text: "sellNegativeMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/maintainSellNegative.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_ITEMCATEGORYMAINT">
				{ text: "subGroupMaintenance", url: "<%=response.encodeURL(itemMaintenanceContextPath + "/item/itemCategoryMaint?shouldHandleRequest=false")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_PRODUCTHISTORYINQUIRY.DO">
				{ text: "productHistoryInquiry", url: "<%=response.encodeURL(itemContextPath + "/history/productHistory.action")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_VIEWITEMDEPOSITBYSTATE.DO">
				{ text: "itemDepositByState", url: "<%=response.encodeURL(itemContextPath + "/maintenance/viewItemDepositByState.action")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_DATACLEANSINGUPLOADTOOL.DO">
				{ text: "dataCleansingTool", url: "<%=response.encodeURL(itemContextPath + "/cleansing/start.action")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_FINDITEMTRANSITION.DO">
				{ text: "transitionItem", url: "<%=response.encodeURL(itemContextPath + "/transition/")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_SMREXCEPTIONREPORT.DO">
				{ text: "srmDiscrepancy", url: "<%=response.encodeURL(itemContextPath + "/maintenance/smrExceptionReport.action")%>" },
				</authz:authorize>              
				<authz:authorize ifAnyGranted="ACTION_PRODUCTSEARCHTERMMAINT.DO,ACTION_PRODUCTSEARCHTERMVIEW.DO">
				{ text: "productSearchTermMaintenance", url: "<%=response.encodeURL(itemContextPath + "/terms/")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ITEM_EXCESSPUNCH">
				{ text: "excessPunch", url: "<%=response.encodeURL(itemContextPath + "/excessPunch")%>" },
				</authz:authorize>         
				{ text: "imageDefaults", url: "<%=response.encodeURL(itemContextPath + "/imageDefaults/")%>" },         
				<authz:authorize ifAllGranted="ROLE_MAINTAININTEGRATIONSOURCE">
				{ text: "integrationSources", url: "<%=response.encodeURL(itemContextPath + "/integrationSourceType/")%>" },       
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_CANCONTROLSTAGING">
				{ text: "itemStagingControl", url: "<%=response.encodeURL(itemContextPath + "/stagingControl/")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ENTERITEMSEARCH.DO"> 
				{ text: "itemCrossReference", url: "<%=response.encodeURL(itemContextPath + "/integrationCrossReference/")%>" },
				</authz:authorize>        
			]    
		}
	},
	</authz:authorize>
			
	<authz:authorize ifAnyGranted="ACTION_UPDATEVENDORBROKER,ACTION_UPDATEVENDORBROKER,ACTION_VENDORLOOKUP.DO,ACTION_GETVENDORLOCATIONINFORMATION,ACTION_GETVENDORLOGISTICS,ACTION_GETVENDORBUYERS,ACTION_GETVENDORBROKER,ACTION_UPDATEVENDORBROKER,ACTION_UPDATEVENDORBROKER,ACTION_GETVENDORBROKER,ACTION_MAINTAINVENDORCONTACT.DO,ACTION_MAINTAINVENDORTERMS.DO,ACTION_MAINTAINBROKER.DO,ACTION_VENDOR_GETBUYERINFO,ACTION_VENDORAUDIT.DO,ACTION_ECOMMAINTENANCE.DO,ACTION_VENDORSBYEDICODE.DO,ACTION_MAINTAINVENDORACCESS.DO,ACTION_INBOUNDVENDORPOREPORT,ACTION_CANVIEWEDITNSOBUYERASSIGN">
	{
		text: "vendor", 
		url: "<%=response.encodeURL("/vendorMaintenance/main")%>", 
		submenu: {
			id: "vendor",
			zindex:140, 
			itemdata: [
				
				<%
				String mainVendorId = request.getParameter("vendorId");
				String mainVendorLocationCode = request.getParameter("vendorLocationCode");
				String vendeComMaintenanceURL;
				String poByVendorUrl;
			   
				if (mainVendorId != null && mainVendorId.indexOf("-") != -1) {
					String origVendorId = mainVendorId;
					mainVendorId = origVendorId.substring(0,origVendorId.indexOf("-"));
					mainVendorLocationCode = origVendorId.substring(origVendorId.indexOf("-")+1,origVendorId.length());
				}

				if (mainVendorId == null) {
					mainVendorLocationCode = "";
				} else {
					if (mainVendorLocationCode == null ||
						mainVendorLocationCode.equalsIgnoreCase("null") ||
						mainVendorLocationCode.equalsIgnoreCase("")) {
						mainVendorLocationCode = "";
					}
			   }

			   if (mainVendorId == null || mainVendorId.equalsIgnoreCase("null")) {
					vendeComMaintenanceURL="/eComMaintenance.do";
					poByVendorUrl="/po/poByVendor";
				} else {
					vendeComMaintenanceURL="/eComMaintenance.do?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode;
					poByVendorUrl="/po/poByVendor?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode;
				}

				String canUpdateUsdaFlagInd = "No"; 
				String vendorMainURL = "/maintenance/lookupVendorLocation.action?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode;
				String vendorCommodityURL = "/maintenance/vendorCommodityInfo.action?canUpdateUsdaFlagInd="+ canUpdateUsdaFlagInd +"&vendorId="+mainVendorId;
				String vendorLogisticsURL = "/logistics/summary?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode;
				String vendorContactURL = "/maintainVendorContact.do?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode;
				String vendorBrokerURL = "";
				%>
				
				<authz:authorize ifAllGranted="ACTION_CANUPDATEUSDAFLAGIND">
				<% 
				 canUpdateUsdaFlagInd = "Yes"; 
				 vendorCommodityURL = "/maintenance/vendorCommodityInfo.action?canUpdateUsdaFlagInd="+ canUpdateUsdaFlagInd +"&vendorId="+mainVendorId;
				%>					
				</authz:authorize>
				
				<authz:authorize ifAllGranted="ACTION_UPDATEVENDORBROKER">
				<% vendorBrokerURL = "/getVendorBrokerSummary?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode; %>
				</authz:authorize>
				<authz:authorize ifNotGranted="ACTION_UPDATEVENDORBROKER">
				<% vendorBrokerURL = "/getVendorBrokerSummary?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode; %>
					<%--
						//Will Use once the Broker Summary page requires vendor_id and vendor location code
						<% vendorBrokerURL = "/getVendorBrokerSummary?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode; %>
					--%>
				</authz:authorize>
				<% String vendorBuyerURL = "/buyers/summary?vendorId="+mainVendorId+"&vendorLocationCode="+mainVendorLocationCode;  %>
			  
				<authz:authorize ifAllGranted="ACTION_VENDORLOOKUP.DO">
				{ text: "vendorLookup", url: "<%=response.encodeURL("/vendor/vendorLookup.do")%>" },
				</authz:authorize>

				<authz:authorize ifAllGranted="ACTION_GETVENDORLOCATIONINFORMATION">
				<%if (mainVendorId != null && !mainVendorId.equalsIgnoreCase("null") && !mainVendorId.equalsIgnoreCase("")){%>
				{ text: "maintainVendorLocation", url: "<%=response.encodeURL(vendorContextPath + vendorMainURL)%>", id: "vendorIdSelectedLocation"},
				<%} else {%>
				{ text: "maintainVendorLocation", url: "<%=response.encodeURL(vendorContextPath +"/maintenance/lookupVendorLocation.action")%>", id: "vendorIdSelectedLocation" },
				<%}%>
				</authz:authorize>

				<authz:authorize ifAllGranted="ACTION_GETVENDORLOGISTICS">
				<%if (mainVendorId != null && !mainVendorId.equalsIgnoreCase("null") && !mainVendorId.equalsIgnoreCase("")){%>
				{ text: "maintainVendorLogistics", url: "<%=response.encodeURL(vendorContextPath + vendorLogisticsURL)%>", id: "vendorIdSelectedLogistics" },
				<%} else {%>
				{ text: "maintainVendorLogistics", url: "<%=response.encodeURL(vendorContextPath + "/logistics/summary")%>", id: "vendorIdSelectedLogistics" },
				<%}%>
				</authz:authorize>
				
				<authz:authorize ifAllGranted="ACTION_GETVENDORBUYERS">
				<%if (mainVendorId != null && !mainVendorId.equalsIgnoreCase("null") && !mainVendorId.equalsIgnoreCase("")){%>
				 { text: "maintainVendorBuyers", url: "<%=response.encodeURL(vendorContextPath+vendorBuyerURL)%>", id: "vendorIdSelectedBuyer"},
				<%} else {%>
				{ text: "maintainVendorBuyers", url: "<%=response.encodeURL(vendorContextPath+"/buyers/summary")%>" , id: "vendorIdSelectedBuyer" },
				<%}%>
				</authz:authorize>
			   
			   <authz:authorize ifAllGranted="ACTION_GETVENDORINFORMATION">
				<%if (mainVendorId != null && !mainVendorId.equalsIgnoreCase("null") && !mainVendorId.equalsIgnoreCase("")){%>
				{ text: "maintainVendorLevel", url: "<%=response.encodeURL(vendorContextPath + vendorCommodityURL)%>", id: "vendorIdSelectedCommodity"},
				<%} else {%>
				{ text: "maintainVendorLevel", url: "<%=response.encodeURL(vendorContextPath +"/maintenance/vendorCommodityInfo.action?canUpdateUsdaFlagInd="+canUpdateUsdaFlagInd)%>", id: "vendorIdSelectedCommodity" },
				<%}%>
				</authz:authorize>
				
				<%if (mainVendorId != null && !mainVendorId.equalsIgnoreCase("null") && !mainVendorId.equalsIgnoreCase("")){%>
				<authz:authorize ifAllGranted="ACTION_GETVENDORBROKER">
				{ text: "maintainVendorBroker", url: "<%=response.encodeURL(vendorMaintenanceContextPath +vendorBrokerURL)%>", id: "vendorIdSelectedBroker"},
				</authz:authorize>
				<%} else {%>
			   
				<% String vbAction = null; %>
				<authz:authorize ifAllGranted="ACTION_UPDATEVENDORBROKER">
					<% vbAction = "/getVendorBrokerSummary"; %>
				</authz:authorize>
				<authz:authorize ifNotGranted="ACTION_UPDATEVENDORBROKER">
					<% vbAction = "/getVendorBrokerSummary"; %>
				<%--
				//Will Use once the Broker Summary page requires vendor_id and vendor location code
							<% vbAction = "/getVendorBrokerSummary"; %>
				--%>
				</authz:authorize>

				<authz:authorize ifAllGranted="ACTION_GETVENDORBROKER">
				{ text: "maintainVendorBroker", url: "<%=response.encodeURL(vendorMaintenanceContextPath+vbAction)%>", id: "vendorIdSelectedBroker" },
				</authz:authorize>

				<%}%>
				<authz:authorize ifAllGranted="ACTION_MAINTAINVENDORCONTACT.DO">
				<%if (mainVendorId != null && !mainVendorId.equalsIgnoreCase("null") && !mainVendorId.equalsIgnoreCase("")){%>
				{ text: "maintainVendorContacts", url: "<%=response.encodeURL(vendorContextPath+vendorContactURL)%>", id: "vendorIdSelectedContacts" },
				<%} else {%>
				{ text: "maintainVendorContacts", url: "<%=response.encodeURL(vendorContextPath +"/maintainVendorContact.do")%>", id: "vendorIdSelectedContacts" },
				<%}%>
				</authz:authorize>
				
				<authz:authorize ifAllGranted="ACTION_MAINTAINVENDORTERMS.DO">
				{ text: "maintainVendorTerms", url: "<%=response.encodeURL(vendorMaintenanceContextPath +"/maintainVendorTerms.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_MAINTAINBROKER.DO">
				{ text: "maintainBroker", url: "<%=response.encodeURL(vendorMaintenanceContextPath +"/maintainBroker.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_VENDOR_GETBUYERINFO">
				{ text: "maintainBuyer", url: "<%=response.encodeURL(vendorMaintenanceContextPath +"/vendor/getBuyerInfo")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ROLE_VIEWNSOBUYERASSIGNMENT">
				{ text: "buyerSalesOrgAssignment", url: "<%=response.encodeURL("/vendor/salesOrgBuyerAssignments.do")%>" },                    
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_VENDORAUDIT.DO">
				{ text: "vendorAudit", url: "<%=response.encodeURL(vendorMaintenanceContextPath + "/vendorAudit.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_ECOMMAINTENANCE.DO">
				{ text: "vendorEComMaintenance", url: "<%=response.encodeURL(vendorMaintenanceContextPath + vendeComMaintenanceURL)%>", id: "vendorIdSelectedeCom" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_VENDORSBYEDICODE.DO">
				{ text: "vendorsByEDICode", url: "<%=response.encodeURL(vendorMaintenanceContextPath + "/vendorsByEDICode.do")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_MAINTAINVENDORACCESS.DO">
				{ text: "outsideVendorAccess", url: "<%=response.encodeURL(vendorContextPath + "/locationAccess/vendorLocationAccess.action")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_INBOUNDVENDORPOREPORT">
				{ text: "inboundVendorReporting", url: "<%=response.encodeURL(vendorMaintenanceContextPath + "/inboundVendorPOReport")%>" },
				</authz:authorize> 
				<authz:authorize ifAllGranted="ACTION_VENDORLOOKUP.DO">
				{ text: "vendorCrossReference", url: "<%=response.encodeURL(vendorContextPath + "/integrationCrossReference/")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ROLE_VENDORSTAGINGMAINTAINER">
				{ text: "vendorStagingControl", url: "<%=response.encodeURL(vendorContextPath + "/vendorStagingControl/")%>" },
				</authz:authorize>
			] 
		}
	},
	</authz:authorize>
	
	<authz:authorize ifAnyGranted="ACTION_LANELOGISTICSSUMMARY,ACTION_COMBOLOADSUMMARY">
	{
		text: "loadBuild", 
		url: "<%=response.encodeURL("/loadBuilding/main")%>", 
		submenu: {
			id: "loadbuilding",
			zindex:140,
			itemdata: [
				<authz:authorize ifAllGranted="ACTION_LANELOGISTICSSUMMARY">
				{ text: "dcToDc", url: "<%=response.encodeURL(loadBuildingContextPath + "/laneLogisticsSummary")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_COMBOLOADSUMMARY">
				{ text: "comboLoads", url: "<%=response.encodeURL(loadBuildingContextPath + "/comboLoadSummary")%>" },
				</authz:authorize>
			]
		}
	},
	</authz:authorize>
	
	<authz:authorize ifAnyGranted="ACTION_BARCODE_BARCODEINQUIRY,ACTION_BARCODE_BARCODESBYVENDOR">
	{
		text: "barcode", 
		url: "<%=response.encodeURL("/itemMaintenance/main")%>", 
		submenu: {
			id: "barcode",
			zindex:140,
			itemdata: [ 
				<authz:authorize ifAllGranted="ACTION_BARCODE_BARCODEINQUIRY">
				{ text: "barcodeInquiry" , url: "<%=response.encodeURL(itemContextPath + "/barcode/barcodeInquiry")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ACTION_BARCODE_BARCODESBYVENDOR">
				{ text: "barcodesByVendor", url:"<%=response.encodeURL(itemContextPath + "/barcode/barcodeByVendor")%>" },
				</authz:authorize>
			]
		}
	},
	</authz:authorize>
		   
	<authz:authorize ifAnyGranted="ACTION_REQUESTITEMAUDIT.DO,ROLE_SELL_NEGATIVE_RPT,ROLE_TEMP_OUT_REPORT">         
	{
		text: "reports", 
		url: "<%=response.encodeURL("/itemMaintenance/main")%>", 
		submenu: {
			id: "reports",
			zindex:140,
			itemdata: [
				<authz:authorize ifAllGranted="ACTION_REQUESTITEMAUDIT.DO">
				{ text: "newItemSetupDataQualityReport", url: "<%=response.encodeURL(itemContextPath + "/report/itemSetup")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ROLE_SELL_NEGATIVE_RPT">
				{ text: "sellNegativeReport", url: "<%=response.encodeURL(itemContextPath + "/report/negativeInventoryItemDetailsSearch")%>" },
				</authz:authorize>
				<authz:authorize ifAllGranted="ROLE_TEMP_OUT_REPORT">
				{ text: "tempOutReport", url: "<%=response.encodeURL(itemContextPath + "/report/tempOutItemDetailsSearch")%>" }
				</authz:authorize>
			]
		}
	}
	</authz:authorize>   
];

$(document).ready(function() {
	var menu = $("#productAcquisitionMenu");
	var languageTypeCode = '<%= request.getLocale()%>';
	if(languageTypeCode === "fr") {
		filterMenu(aSubmenuData, "fr");
	} else {
		filterMenu(aSubmenuData, "en");
	}

	function filterMenu(data, language) {
		var parentUL = $("<ul class='nav navbar-nav'></ul>");
		$.each(data, function(index, value) {
			if(language === "fr") {
				value.text = frList[value.text];
			} else {
				value.text = enList[value.text];
			}
			var parentLI;
			var parentAnker;
			if(value.submenu) {
				parentLI = $('<li class="dropdown" ></li>');
				parentAnker = $('<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">' + value.text + '<span class="caret"></span></a>');
				var newChildUL = filterSubMenu(value.submenu.itemdata, language);
				parentLI.append(parentAnker);
				parentLI.append($(newChildUL));
			} else {
				parentLI = $('<li></li>');
				parentAnker = $('<a href="' + value.url + '">' + value.text + '</a>');
				parentLI.append(parentAnker);
			}
			parentUL.append(parentLI);
		});
		menu.append(parentUL);
		return data;
	}

	function filterSubMenu(data, language) {
		var childUL = $('<ul class="dropdown-menu"></ul>');
		if(data.length > 20) {
			childUL.addClass("doubleColumn");
		}
		$.each(data, function(index, value) {
			if(language === "fr") {
				value.text = frList[value.text];
			} else {
				value.text = enList[value.text];
			}
			var childLI = $('<li class="dropdown-content"></li>');
			var childAnker = $('<a href="' + value.url + '">' + value.text + '</a>');
			childLI.append(childAnker);
			childUL.append(childLI);
		});
		return childUL;
	}
});
