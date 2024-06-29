/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EACAPA
App: EACAPA_LST (Capacities)
=================================================================================== */

using knowledgebase.srv.eacapa_lst as service from '../../../../srv/knowledgebase.eacapa_lst.srv.cds';

annotate service.EACapacities with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	group                @title: '{i18n>_GROUP}' @mandatory ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
};
annotate service.EASICap with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	capacity             @title: '{i18n>_CAPACITY}' @mandatory@UI.Hidden ;
	sItem                @title: '{i18n>_SITEM}' @mandatory ;
};
annotate service.EACapGroups with 
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

annotate service.EACapacities with 
{
	group @Common.ValueList:
	{
		CollectionPath : 'EACapGroups',
		Label : 'EACAPGROUPS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: group_code,
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

annotate service.EASICap with 
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
