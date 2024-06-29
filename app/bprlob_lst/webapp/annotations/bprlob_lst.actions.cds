/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRLOB
App: BPRLOB_LST (Lobs)
=================================================================================== */

using knowledgebase.srv.bprlob_lst as service from '../../../../srv/knowledgebase.bprlob_lst.srv.cds';

annotate service.BPLobs with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.BPBusinessAreas with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);