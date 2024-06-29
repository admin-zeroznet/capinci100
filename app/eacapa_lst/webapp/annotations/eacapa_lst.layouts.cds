/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EACAPA
App: EACAPA_LST (Capacities)
=================================================================================== */

using knowledgebase.srv.eacapa_lst as service from '../../../../srv/knowledgebase.eacapa_lst.srv.cds';

annotate service.EACapacities with 
@(
	UI.SelectionFields : [group_code],
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
			Value : group_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PEACAP}',
		TypeNamePlural : '{i18n>_PEACAP_S}',
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
			Target: 'mfk_easicap/@UI.LineItem',
			Label : '{i18n>_PEACAP_SI_S}'
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
				Value : group_code,
			},
			{
				Value : descr,
			},
		],
	},
);

annotate service.EASICap with 
@(
	UI.SelectionFields : [capacity_code,sItem_code],
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
			Value : capacity_code,
		},
		{
			Value : sItem_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PEACAP_SI}',
		TypeNamePlural : '{i18n>_PEACAP_SI_S}',
	},
);
