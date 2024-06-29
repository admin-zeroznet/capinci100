/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRBRO
App: BPRBRO_LST (Base Roles)
=================================================================================== */

using knowledgebase.srv.bprbro_lst as service from '../../../../srv/knowledgebase.bprbro_lst.srv.cds';

annotate service.BPRoles with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);