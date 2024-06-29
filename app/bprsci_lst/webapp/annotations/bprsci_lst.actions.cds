/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRSCI
App: BPRSCI_LST (Scope Items)
=================================================================================== */

using knowledgebase.srv.bprsci_lst as service from '../../../../srv/knowledgebase.bprsci_lst.srv.cds';

annotate service.BPScopeItems with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.BPSICountries with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);
annotate service.BPVariants with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);
annotate service.BPTasks with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);