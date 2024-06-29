/* ================================ ACTIONS =======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPTASK
App: BPTASK_LST (Scope Items Tasks (Steps))
=================================================================================== */

using knowledgebase.srv.bptask_lst as service from '../../../../srv/knowledgebase.bptask_lst.srv.cds';

annotate service.BPTasks with 
@(
	UI.Identification :
	[
		/* --- Unbound Actions */
		/* --- Bound Actions */
	],
);