/* ================================== LAYOUTS ====================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPTASK
App: BPTASK_LST (Scope Items Tasks (Steps))
=================================================================================== */

using knowledgebase.srv.bptask_lst as service from '../../../../srv/knowledgebase.bptask_lst.srv.cds';

annotate service.BPTasks with 
@(
	UI.SelectionFields : [sItem_code,fApp_code,tCode_code,bRole_code],
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
			Value : id,
		},
		{
			Value : sItem_code,
		},
		{
			Value : descr,
		},
		{
			Value : semanticObject,
		},
		{
			Value : semanticAction,
		},
		{
			Value : fApp_code,
		},
		{
			Value : tCode_code,
		},
		{
			Value : bRole_code,
		},
	],

	UI.HeaderInfo : 
	{
		TypeName : '{i18n>_PTASKS}',
		TypeNamePlural : '{i18n>_PTASKS_S}',
		Title : 
		{
			$Type: 'UI.DataField',
			Value : id,
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
			Target: '@UI.FieldGroup#NONE_ACTION',
			Label : '{i18n>_ACTION}'
		},
	],
	UI.FieldGroup #NONE_OVERVIEW :
	{
		Data : 
		[
			{
				Value : id,
			},
			{
				Value : sItem_code,
			},
			{
				Value : seq,
			},
			{
				Value : descr,
			},
			{
				Value : bRole_code,
			},
		],
	},
	UI.FieldGroup #NONE_ACTION :
	{
		Data : 
		[
			{
				Value : semanticObject,
			},
			{
				Value : semanticAction,
			},
			{
				Value : fApp_code,
			},
			{
				Value : tCode_code,
			},
		],
	},
);
