/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: TCODES
App: TCODES_LST (Transactions Codes)
=================================================================================== */

using knowledgebase.srv.tcodes_lst as service from '../../../../srv/knowledgebase.tcodes_lst.srv.cds';

annotate service.TCodes with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	component            @title: '{i18n>_COMPONENT}' @mandatory ;
};
annotate service.Components with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.TCodes with 
{
	component @Common.ValueList:
	{
		CollectionPath : 'Components',
		Label : 'COMPONENTS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: component_code,
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
