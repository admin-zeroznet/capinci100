/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPTASK
App: BPTASK_LST (Scope Items Tasks (Steps))
=================================================================================== */

using knowledgebase.srv.bptask_lst as service from '../../../../srv/knowledgebase.bptask_lst.srv.cds';

annotate service.BPTasks with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	sItem                @title: '{i18n>_SITEM}' @mandatory ;
	seq                  @title: '{i18n>_SEQ}'  ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
	semanticObject       @title: '{i18n>_SEMANTICOBJECT}'  ;
	semanticAction       @title: '{i18n>_SEMANTICACTION}'  ;
	fApp                 @title: '{i18n>_FAPP}'  ;
	tCode                @title: '{i18n>_TCODE}'  ;
	bRole                @title: '{i18n>_BROLE}'  ;
};
annotate service.BPRoles with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.FioriApps with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
	tCode                @UI.Hidden;
};
annotate service.BPScopeItems with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.TCodes with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.BPTasks with 
{
	bRole @Common.ValueList:
	{
		CollectionPath : 'BPRoles',
		Label : 'BPROLES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: bRole_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

	fApp @Common.ValueList:
	{
		CollectionPath : 'FioriApps',
		Label : 'FIORIAPPS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: fApp_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
			{ //Filter for ( tCode )
				$Type : 'Common.ValueListParameterFilterOnly',
				ValueListProperty: 'tCode_code',
			},
			{
				$Type : 'Common.ValueListParameterIn',
				LocalDataProperty: tCode_code,
				ValueListProperty: 'tCode_code',
			},
		],
	}
	@Common.ValueListWithFixedValues;

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

	tCode @Common.ValueList:
	{
		CollectionPath : 'TCodes',
		Label : 'TCODES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: tCode_code,
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
