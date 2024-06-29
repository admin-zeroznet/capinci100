/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAGRUP
App: EAGRUP_LST (Capacities Groups)
=================================================================================== */

using knowledgebase.srv.eagrup_lst as service from '../../../../srv/knowledgebase.eagrup_lst.srv.cds';

annotate service.EACapGroups with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	bArea                @title: '{i18n>_BAREA}' @mandatory ;
	descr                @title: '{i18n>_DESCR}'  ;
};
annotate service.EACapacities with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	group                @title: '{i18n>_GROUP}' @mandatory@UI.Hidden ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
};
annotate service.BPBusinessAreas with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.EACapGroups with 
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
