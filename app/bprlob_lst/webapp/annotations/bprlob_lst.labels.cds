/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRLOB
App: BPRLOB_LST (Lobs)
=================================================================================== */

using knowledgebase.srv.bprlob_lst as service from '../../../../srv/knowledgebase.bprlob_lst.srv.cds';

annotate service.BPLobs with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
};
annotate service.BPBusinessAreas with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	lob                  @title: '{i18n>_LOB}' @mandatory@UI.Hidden ;
};

/* ================================== VALUE HELPS =================================== */
