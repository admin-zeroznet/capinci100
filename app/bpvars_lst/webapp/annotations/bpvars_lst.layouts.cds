/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPVARS
App: BPVARS_LST (Variants)
=================================================================================== */

using knowledgebase.srv.bpvars_lst as service from '../../../../srv/knowledgebase.bpvars_lst.srv.cds';

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
		TypeName : '{i18n>_PVARIANTS}',
		TypeNamePlural : '{i18n>_PVARIANTS_S}',
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
			Target: 'mfk_bpvariantstasks/@UI.LineItem',
			Label : '{i18n>_PVAR_TASKS_S}'
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
				Value : sItem_code,
			},
		],
	},
);

annotate service.BPVariantsTasks with 
@(
	UI.SelectionFields : [variant_code,task_iid],
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
			Value : variant_code,
		},
		{
			Value : task_iid,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PVAR_TASKS}',
		TypeNamePlural : '{i18n>_PVAR_TASKS_S}',
	},
);
