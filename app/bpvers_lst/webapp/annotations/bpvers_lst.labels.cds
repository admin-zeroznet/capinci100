/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPVERS
App: BPVERS_LST (Best Practices Versions)
=================================================================================== */

using knowledgebase.srv.bpvers_lst as service from '../../../../srv/knowledgebase.bpvers_lst.srv.cds';

annotate service.BPVersions with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
};

/* ================================== VALUE HELPS =================================== */
