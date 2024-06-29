/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAE2EP
App: EAE2EP_LST (E2E Processes)
=================================================================================== */

using knowledgebase.srv.eae2ep_lst as service from '../../../../srv/knowledgebase.eae2ep_lst.srv.cds';

annotate service.EAE2E with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  ;
};
annotate service.EASIE2E with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	process              @title: '{i18n>_PROCESS}' @mandatory@UI.Hidden ;
	sItem                @title: '{i18n>_SITEM}' @mandatory ;
};
annotate service.BPScopeItems with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.EASIE2E with 
{
	sItem @Common.ValueList:
	{
		CollectionPath : 'BPScopeItems',
		Label : 'BPSCOPEITEMS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: sItem_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

};
