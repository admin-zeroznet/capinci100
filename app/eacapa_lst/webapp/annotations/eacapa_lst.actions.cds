/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EACAPA
App: EACAPA_LST (Capacities)
=================================================================================== */

using knowledgebase.srv.eacapa_lst as service from '../../../../srv/knowledgebase.eacapa_lst.srv.cds';

annotate service.EACapacities with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.EASICap with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);