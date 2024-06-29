/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: AORGFD
App: AORGFD_LST (Authorization Org Fields)
=================================================================================== */

using knowledgebase.srv.aorgfd_lst as service from '../../../../srv/knowledgebase.aorgfd_lst.srv.cds';

annotate service.AuthOrgFields with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
};

/* ================================== VALUE HELPS =================================== */
