/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: BPVARS
App: BPVARS_LST (Variants)
=================================================================================== */

using knowledgebase.srv.bpvars_lst as service from '../../../../srv/knowledgebase.bpvars_lst.srv.cds';

annotate service.BPVariants with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	sItem                @title: '{i18n>_SITEM}' @mandatory ;
};
annotate service.BPVariantsTasks with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	variant              @title: '{i18n>_VARIANT}' @mandatory@UI.Hidden ;
	task                 @title: '{i18n>_TASK}' @mandatory  @Common.Text : task.id  @Common.TextArrangement: #TextOnly;
};
annotate service.BPScopeItems with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.BPTasks with 
{
	iid                  @Common.Text: id @Common.TextArrangement: #TextOnly;
	id                   @title: '{i18n>_ID}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.BPVariants with 
{
	sItem @Common.ValueList:
	{
		CollectionPath : 'BPScopeItems',
		Label : 'BPSCOPEITEMS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: sItem_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

};

annotate service.BPVariantsTasks with 
{
	task @Common.ValueList:
	{
		CollectionPath : 'BPTasks',
		Label : 'BPTASKS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: task_iid,
				ValueListProperty: 'iid',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'id',
			},
		],
	};

};
