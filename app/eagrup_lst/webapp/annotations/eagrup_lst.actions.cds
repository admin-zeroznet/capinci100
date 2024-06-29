/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAGRUP
App: EAGRUP_LST (Capacities Groups)
=================================================================================== */

using knowledgebase.srv.eagrup_lst as service from '../../../../srv/knowledgebase.eagrup_lst.srv.cds';

annotate service.EACapGroups with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.EACapacities with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);