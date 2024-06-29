/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: AORGFD
App: AORGFD_LST (Authorization Org Fields)
=================================================================================== */

using knowledgebase.srv.aorgfd_lst as service from '../../../../srv/knowledgebase.aorgfd_lst.srv.cds';

annotate service.AuthOrgFields with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);