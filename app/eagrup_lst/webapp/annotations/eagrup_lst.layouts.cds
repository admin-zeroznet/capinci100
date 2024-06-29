/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: EAGRUP
App: EAGRUP_LST (Capacities Groups)
=================================================================================== */

using knowledgebase.srv.eagrup_lst as service from '../../../../srv/knowledgebase.eagrup_lst.srv.cds';

annotate service.EACapGroups with 
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
		TypeName : '{i18n>_PEAGRUP}',
		TypeNamePlural : '{i18n>_PEAGRUP_S}',
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
			Target: 'mfk_eacapacities/@UI.LineItem',
			Label : '{i18n>_PGRUP_CAP_S}'
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
			{
				Value : descr,
			},
		],
	},
);

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
		TypeName : '{i18n>_PGRUP_CAP}',
		TypeNamePlural : '{i18n>_PGRUP_CAP_S}',
	},
);
