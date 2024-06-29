/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRSCI
App: BPRSCI_LST (Scope Items)
=================================================================================== */

using knowledgebase.srv.bprsci_lst as service from '../../../../srv/knowledgebase.bprsci_lst.srv.cds';

annotate service.BPScopeItems with 
@(
	UI.SelectionFields : [ver_code,component_code],
	PresentationVariant :
	{
		SortOrder :
		[
		],
		Visualizations : ['@UI.LineItem'],
	},
	UI.LineItem : 
	[
		{
			Value : code,
		},
		{
			Value : name,
		},
		{
			Value : ver_code,
		},
		{
			Value : component_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PSCITEMS}',
		TypeNamePlural : '{i18n>_PSCITEMS_S}',
		Title : 
		{
			$Type: 'UI.DataField',
			Value : code,
		},
	},
	UI.HeaderFacets : 
	[
		{
			$Type : 'UI.ReferenceFacet',
			Target: '@UI.FieldGroup#HEADERDATA',
		},
	],
	UI.FieldGroup #HEADERDATA: 
	{
		Data : 
		[
		],
	},
	UI.Facets : 
	[
		{
			$Type : 'UI.ReferenceFacet',
			Target: '@UI.FieldGroup#NONE_OVERVIEW',
			Label : '{i18n>_OVERVIEW}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_bpsicountries/@UI.LineItem',
			Label : '{i18n>_PSI_COUNTR_S}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_bpvariants/@UI.LineItem',
			Label : '{i18n>_PVAR_SITEMS_S}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_bptasks/@UI.LineItem',
			Label : '{i18n>_PSI_TASKS_S}'
		},
	],
	UI.FieldGroup #NONE_OVERVIEW :
	{
		Data : 
		[
			{
				Value : code,
			},
			{
				Value : name,
			},
			{
				Value : ver_code,
			},
			{
				Value : component_code,
			},
			{
				Value : descr,
			},
			{
				Value : cluster,
			},
		],
	},
);

annotate service.BPSICountries with 
@(
	UI.SelectionFields : [sItem_code,country_code],
	PresentationVariant :
	{
		SortOrder :
		[
		],
		Visualizations : ['@UI.LineItem'],
	},
	UI.LineItem : 
	[
		{
			Value : sItem_code,
		},
		{
			Value : country_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PSI_COUNTR}',
		TypeNamePlural : '{i18n>_PSI_COUNTR_S}',
	},
);

annotate service.BPVariants with 
@(
	UI.SelectionFields : [sItem_code],
	PresentationVariant :
	{
		SortOrder :
		[
		],
		Visualizations : ['@UI.LineItem'],
	},
	UI.LineItem : 
	[
		{
			Value : code,
		},
		{
			Value : name,
		},
		{
			Value : sItem_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PVAR_SITEMS}',
		TypeNamePlural : '{i18n>_PVAR_SITEMS_S}',
	},
);

annotate service.BPTasks with 
@(
	UI.SelectionFields : [sItem_code,fApp_code,tCode_code,bRole_code],
	PresentationVariant :
	{
		SortOrder :
		[
		],
		Visualizations : ['@UI.LineItem'],
	},
	UI.LineItem : 
	[
		{
			Value : id,
		},
		{
			Value : sItem_code,
		},
		{
			Value : descr,
		},
		{
			Value : semanticObject,
		},
		{
			Value : semanticAction,
		},
		{
			Value : fApp_code,
		},
		{
			Value : tCode_code,
		},
		{
			Value : bRole_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PSI_TASKS}',
		TypeNamePlural : '{i18n>_PSI_TASKS_S}',
	},
);
