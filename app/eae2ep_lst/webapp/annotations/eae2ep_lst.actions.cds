/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAE2EP
App: EAE2EP_LST (E2E Processes)
=================================================================================== */

using knowledgebase.srv.eae2ep_lst as service from '../../../../srv/knowledgebase.eae2ep_lst.srv.cds';

annotate service.EAE2E with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.EASIE2E with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);