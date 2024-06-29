/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: FIAPPS
App: FIAPPS_LST (Fiori Apps)
=================================================================================== */

using knowledgebase.srv.fiapps_lst as service from '../../../../srv/knowledgebase.fiapps_lst.srv.cds';

annotate service.FioriApps with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);
annotate service.NotesFApps with 
@(
	UI.Identification :
	[
		/* --- Bound Actions */
	],
);