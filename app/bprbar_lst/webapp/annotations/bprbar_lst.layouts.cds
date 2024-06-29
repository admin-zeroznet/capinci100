/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRBAR
App: BPRBAR_LST (Business Areas)
=================================================================================== */

using knowledgebase.srv.bprbar_lst as service from '../../../../srv/knowledgebase.bprbar_lst.srv.cds';

annotate service.BPBusinessAreas with 
@(
	UI.SelectionFields : [lob_code],
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
			Value : lob_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PBAREAS}',
		TypeNamePlural : '{i18n>_PBAREAS_S}',
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
			Target: 'mfk_bpareasscopes/@UI.LineItem',
			Label : '{i18n>_PAREA_SCOPES_S}'
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
				Value : lob_code,
			},
		],
	},
);

annotate service.BPAreasScopes with 
@(
	UI.SelectionFields : [bArea_code,sItem_code],
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
			Value : bArea_code,
		},
		{
			Value : sItem_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PAREA_SCOPES}',
		TypeNamePlural : '{i18n>_PAREA_SCOPES_S}',
	},
);
