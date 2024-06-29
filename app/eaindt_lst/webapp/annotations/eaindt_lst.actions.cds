/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAINDT
App: EAINDT_LST (Industries)
=================================================================================== */

using knowledgebase.srv.eaindt_lst as service from '../../../../srv/knowledgebase.eaindt_lst.srv.cds';

annotate service.EAIndustries with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.EAIndCap with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);
annotate service.EAIndE2E with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);