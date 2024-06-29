/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: AORGFD
App: AORGFD_LST (Authorization Org Fields)
=================================================================================== */

using knowledgebase.srv.aorgfd_lst as service from '../../../../srv/knowledgebase.aorgfd_lst.srv.cds';

annotate service.AuthOrgFields with 
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
		TypeName : '{i18n>_PAORGFIELD}',
		TypeNamePlural : '{i18n>_PAORGFIELD_S}',
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
		],
	},
);
