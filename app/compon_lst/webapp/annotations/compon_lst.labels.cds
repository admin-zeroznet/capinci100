/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: COMPON
App: COMPON_LST (Components)
=================================================================================== */

using knowledgebase.srv.compon_lst as service from '../../../../srv/knowledgebase.compon_lst.srv.cds';

annotate service.Components with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	module               @title: '{i18n>_MODULE}' @mandatory ;
};
annotate service.Modules with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.Components with 
{
	module @Common.ValueList:
	{
		CollectionPath : 'Modules',
		Label : 'MODULES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: module_code,
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
