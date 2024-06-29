/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: TCODES
App: TCODES_LST (Transactions Codes)
=================================================================================== */

using knowledgebase.srv.tcodes_lst as service from '../../../../srv/knowledgebase.tcodes_lst.srv.cds';

annotate service.TCodes with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);