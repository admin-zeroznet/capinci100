/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: COMPON
App: COMPON_LST (Components)
=================================================================================== */

using knowledgebase.srv.compon_lst as service from '../../../../srv/knowledgebase.compon_lst.srv.cds';

annotate service.Components with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);