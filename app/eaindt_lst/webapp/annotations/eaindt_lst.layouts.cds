/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAINDT
App: EAINDT_LST (Industries)
=================================================================================== */

using knowledgebase.srv.eaindt_lst as service from '../../../../srv/knowledgebase.eaindt_lst.srv.cds';

annotate service.EAIndustries with 
@(
	UI.SelectionFields : [],
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
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PEAIND}',
		TypeNamePlural : '{i18n>_PEAIND_S}',
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
			Target: 'mfk_eaindcap/@UI.LineItem',
			Label : '{i18n>_PEAIND_CAP_S}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_eainde2e/@UI.LineItem',
			Label : '{i18n>_PEAIND_E2E_S}'
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
				Value : descr,
			},
		],
	},
);

annotate service.EAIndCap with 
@(
	UI.SelectionFields : [industry_code,capacity_code],
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
			Value : industry_code,
		},
		{
			Value : capacity_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PEAIND_CAP}',
		TypeNamePlural : '{i18n>_PEAIND_CAP_S}',
	},
);

annotate service.EAIndE2E with 
@(
	UI.SelectionFields : [industry_code,process_code],
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
			Value : industry_code,
		},
		{
			Value : process_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PEAIND_E2E}',
		TypeNamePlural : '{i18n>_PEAIND_E2E_S}',
	},
);
