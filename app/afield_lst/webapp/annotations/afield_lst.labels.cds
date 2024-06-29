/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: AFIELD
App: AFIELD_LST (Authorization Fields)
=================================================================================== */

using knowledgebase.srv.afield_lst as service from '../../../../srv/knowledgebase.afield_lst.srv.cds';

annotate service.AuthFields with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
};

/* ================================== VALUE HELPS =================================== */
