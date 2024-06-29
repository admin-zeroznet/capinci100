/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: AOBJCT
App: AOBJCT_LST (Authorization Objects)
=================================================================================== */

using knowledgebase.srv.aobjct_lst as service from '../../../../srv/knowledgebase.aobjct_lst.srv.cds';

annotate service.AuthObjects with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
};

/* ================================== VALUE HELPS =================================== */
