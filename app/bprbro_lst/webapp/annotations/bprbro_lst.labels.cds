/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRBRO
App: BPRBRO_LST (Base Roles)
=================================================================================== */

using knowledgebase.srv.bprbro_lst as service from '../../../../srv/knowledgebase.bprbro_lst.srv.cds';

annotate service.BPRoles with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	bArea                @title: '{i18n>_BAREA}' @mandatory ;
};
annotate service.BPBusinessAreas with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.BPRoles with 
{
	bArea @Common.ValueList:
	{
		CollectionPath : 'BPBusinessAreas',
		Label : 'BPBUSINESSAREAS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: bArea_code,
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
