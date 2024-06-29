/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPVARS
App: BPVARS_LST (Variants)
=================================================================================== */

using knowledgebase.srv.bpvars_lst as service from '../../../../srv/knowledgebase.bpvars_lst.srv.cds';

annotate service.BPVariants with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.BPVariantsTasks with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);