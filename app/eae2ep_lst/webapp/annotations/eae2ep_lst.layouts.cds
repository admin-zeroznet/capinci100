/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAE2EP
App: EAE2EP_LST (E2E Processes)
=================================================================================== */

using knowledgebase.srv.eae2ep_lst as service from '../../../../srv/knowledgebase.eae2ep_lst.srv.cds';

annotate service.EAE2E with 
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
		TypeName : '{i18n>_PEAE2E}',
		TypeNamePlural : '{i18n>_PEAE2E_S}',
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
			Target: 'mfk_easie2e/@UI.LineItem',
			Label : '{i18n>_PEAE2E_SI_S}'
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

annotate service.EASIE2E with 
@(
	UI.SelectionFields : [process_code,sItem_code],
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
			Value : process_code,
		},
		{
			Value : sItem_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PEAE2E_SI}',
		TypeNamePlural : '{i18n>_PEAE2E_SI_S}',
	},
);
