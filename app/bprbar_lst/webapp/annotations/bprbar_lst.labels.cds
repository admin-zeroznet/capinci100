/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRBAR
App: BPRBAR_LST (Business Areas)
=================================================================================== */

using knowledgebase.srv.bprbar_lst as service from '../../../../srv/knowledgebase.bprbar_lst.srv.cds';

annotate service.BPBusinessAreas with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	lob                  @title: '{i18n>_LOB}' @mandatory ;
};
annotate service.BPAreasScopes with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	bArea                @title: '{i18n>_BAREA}' @mandatory@UI.Hidden ;
	sItem                @title: '{i18n>_SITEM}' @mandatory ;
};
annotate service.BPLobs with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.BPScopeItems with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.BPBusinessAreas with 
{
	lob @Common.ValueList:
	{
		CollectionPath : 'BPLobs',
		Label : 'BPLOBS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: lob_code,
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

annotate service.BPAreasScopes with 
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
