/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: FIAPPS
App: FIAPPS_LST (Fiori Apps)
=================================================================================== */

using knowledgebase.srv.fiapps_lst as service from '../../../../srv/knowledgebase.fiapps_lst.srv.cds';

annotate service.FioriApps with 
@(
	UI.SelectionFields : [lighthouse,appType_code,tCode_code,frontVer_code,backVer_code],
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
			Value : lighthouse,
		},
		{
			Value : appType_code,
		},
		{
			Value : tCode_code,
		},
		{
			Value : frontVer_code,
		},
		{
			Value : backVer_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PFAPPS}',
		TypeNamePlural : '{i18n>_PFAPPS_S}',
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
			Target: '@UI.FieldGroup#NONE_NETWEAVER',
			Label : '{i18n>_NETWEAVER}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: '@UI.FieldGroup#NONE_OVERVIEW',
			Label : '{i18n>_OVERVIEW}'
		},
		{
			$Type : 'UI.ReferenceFacet',
			Target: 'mfk_notesfapps/@UI.LineItem',
			Label : '{i18n>_PFA_NOTES_S}'
		},
	],
	UI.FieldGroup #NONE_NETWEAVER :
	{
		Data : 
		[
			{
				Value : frontVer_code,
			},
			{
				Value : backVer_code,
			},
			{
				Value : frontSCVer,
			},
			{
				Value : backSCVer,
			},
			{
				Value : frontStackVer,
			},
			{
				Value : backStackVer,
			},
		],
	},
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
			{
				Value : semanticAction,
			},
			{
				Value : link,
			},
			{
				Value : lighthouse,
			},
			{
				Value : productCategory,
			},
			{
				Value : database,
			},
			{
				Value : appType_code,
			},
			{
				Value : tCode_code,
			},
		],
	},
);

annotate service.NotesFApps with 
@(
	UI.SelectionFields : [fApp_code,note_code],
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
			Value : fApp_code,
		},
		{
			Value : note_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PFA_NOTES}',
		TypeNamePlural : '{i18n>_PFA_NOTES_S}',
	},
);
