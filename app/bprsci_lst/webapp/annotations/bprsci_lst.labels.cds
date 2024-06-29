/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRSCI
App: BPRSCI_LST (Scope Items)
=================================================================================== */

using knowledgebase.srv.bprsci_lst as service from '../../../../srv/knowledgebase.bprsci_lst.srv.cds';

annotate service.BPScopeItems with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	ver                  @title: '{i18n>_VER}' @mandatory ;
	component            @title: '{i18n>_COMPONENT}' @mandatory ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
	cluster              @title: '{i18n>_CLUSTER}'  ;
};
annotate service.BPSICountries with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	sItem                @title: '{i18n>_SITEM}' @mandatory@UI.Hidden ;
	country              @title: '{i18n>_COUNTRY}' @mandatory 
	                     @Common.ValueListWithFixedValues @Common.Text : country.name @Common.TextArrangement : #TextFirst;
};
annotate service.BPVariants with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	sItem                @title: '{i18n>_SITEM}' @mandatory@UI.Hidden ;
};
annotate service.BPTasks with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	id                   @title: '{i18n>_ID}' @mandatory ;
	sItem                @title: '{i18n>_SITEM}' @mandatory@UI.Hidden ;
	seq                  @title: '{i18n>_SEQ}'  ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
	semanticObject       @title: '{i18n>_SEMANTICOBJECT}'  ;
	semanticAction       @title: '{i18n>_SEMANTICACTION}'  ;
	fApp                 @title: '{i18n>_FAPP}'  ;
	tCode                @title: '{i18n>_TCODE}'  ;
	bRole                @title: '{i18n>_BROLE}'  ;
};
annotate service.Components with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.BPVersions with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
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
annotate service.TCodes with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.BPScopeItems with 
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

	ver @Common.ValueList:
	{
		CollectionPath : 'BPVersions',
		Label : 'BPVERSIONS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: ver_code,
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
