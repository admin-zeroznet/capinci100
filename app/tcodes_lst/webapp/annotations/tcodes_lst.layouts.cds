/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: TCODES
App: TCODES_LST (Transactions Codes)
=================================================================================== */

using knowledgebase.srv.tcodes_lst as service from '../../../../srv/knowledgebase.tcodes_lst.srv.cds';

annotate service.TCodes with 
@(
	UI.SelectionFields : [component_code],
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
			Value : component_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PTCODES}',
		TypeNamePlural : '{i18n>_PTCODES_S}',
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
				Value : component_code,
			},
		],
	},
);
