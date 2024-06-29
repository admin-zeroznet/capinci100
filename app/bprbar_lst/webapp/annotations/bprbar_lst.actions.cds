/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRBAR
App: BPRBAR_LST (Business Areas)
=================================================================================== */

using knowledgebase.srv.bprbar_lst as service from '../../../../srv/knowledgebase.bprbar_lst.srv.cds';

annotate service.BPBusinessAreas with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.BPAreasScopes with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);