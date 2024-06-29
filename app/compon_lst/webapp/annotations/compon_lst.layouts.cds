/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: COMPON
App: COMPON_LST (Components)
=================================================================================== */

using knowledgebase.srv.compon_lst as service from '../../../../srv/knowledgebase.compon_lst.srv.cds';

annotate service.Components with 
@(
	UI.SelectionFields : [module_code],
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
			Value : module_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PCOMPON}',
		TypeNamePlural : '{i18n>_PCOMPON_S}',
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
				Value : module_code,
			},
		],
	},
);
