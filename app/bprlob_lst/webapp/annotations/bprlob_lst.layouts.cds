/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRLOB
App: BPRLOB_LST (Lobs)
=================================================================================== */

using knowledgebase.srv.bprlob_lst as service from '../../../../srv/knowledgebase.bprlob_lst.srv.cds';

annotate service.BPLobs with 
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
		TypeName : '{i18n>_PLOBS}',
		TypeNamePlural : '{i18n>_PLOBS_S}',
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
			Target: 'mfk_bpbusinessareas/@UI.LineItem',
			Label : '{i18n>_PLOBS_BAREAS_S}'
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
		],
	},
);

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
		TypeName : '{i18n>_PLOBS_BAREAS}',
		TypeNamePlural : '{i18n>_PLOBS_BAREAS_S}',
	},
);
