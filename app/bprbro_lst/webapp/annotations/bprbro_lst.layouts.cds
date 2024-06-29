/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPRBRO
App: BPRBRO_LST (Base Roles)
=================================================================================== */

using knowledgebase.srv.bprbro_lst as service from '../../../../srv/knowledgebase.bprbro_lst.srv.cds';

annotate service.BPRoles with 
@(
	UI.SelectionFields : [bArea_code],
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
			Value : bArea_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PBROLES}',
		TypeNamePlural : '{i18n>_PBROLES_S}',
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
				Value : bArea_code,
			},
		],
	},
);
