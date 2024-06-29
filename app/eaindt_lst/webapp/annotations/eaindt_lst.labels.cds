/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAINDT
App: EAINDT_LST (Industries)
=================================================================================== */

using knowledgebase.srv.eaindt_lst as service from '../../../../srv/knowledgebase.eaindt_lst.srv.cds';

annotate service.EAIndustries with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
};
annotate service.EAIndCap with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	industry             @title: '{i18n>_INDUSTRY}' @mandatory@UI.Hidden ;
	capacity             @title: '{i18n>_CAPACITY}' @mandatory ;
};
annotate service.EAIndE2E with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	industry             @title: '{i18n>_INDUSTRY}' @mandatory@UI.Hidden ;
	process              @title: '{i18n>_PROCESS}' @mandatory ;
};
annotate service.EACapacities with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.EAE2E with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.EAIndCap with 
{
	capacity @Common.ValueList:
	{
		CollectionPath : 'EACapacities',
		Label : 'EACAPACITIES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: capacity_code,
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

annotate service.EAIndE2E with 
{
	process @Common.ValueList:
	{
		CollectionPath : 'EAE2E',
		Label : 'EAE2E',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: process_code,
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
