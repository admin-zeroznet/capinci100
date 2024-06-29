/* ================================= LABELS ======================================
CAPINCI 1.00
Business Area: knowledgebase Transaction: FIAPPS
App: FIAPPS_LST (Fiori Apps)
=================================================================================== */

using knowledgebase.srv.fiapps_lst as service from '../../../../srv/knowledgebase.fiapps_lst.srv.cds';

annotate service.FioriApps with 
{
	code                 @title: '{i18n>_CODE}' @mandatory ;
	name                 @title: '{i18n>_NAME}'  ;
	descr                @title: '{i18n>_DESCR}'  @UI.MultiLineText;
	semanticAction       @title: '{i18n>_SEMANTICACTION}'  ;
	link                 @title: '{i18n>_LINK}'  @UI.MultiLineText;
	lighthouse           @title: '{i18n>_LIGHTHOUSE}'  ;
	productCategory      @title: '{i18n>_PRODUCTCATEGORY}'  @UI.MultiLineText;
	database             @title: '{i18n>_DATABASE}'  @UI.MultiLineText;
	appType              @title: '{i18n>_APPTYPE}'  ;
	tCode                @title: '{i18n>_TCODE}'  ;
	frontVer             @title: '{i18n>_FRONTVER}'  ;
	backVer              @title: '{i18n>_BACKVER}'  ;
	frontSCVer           @title: '{i18n>_FRONTSCVER}'  @UI.MultiLineText;
	backSCVer            @title: '{i18n>_BACKSCVER}'  @UI.MultiLineText;
	frontStackVer        @title: '{i18n>_FRONTSTACKVER}'  @UI.MultiLineText;
	backStackVer         @title: '{i18n>_BACKSTACKVER}'  @UI.MultiLineText;
};
annotate service.NotesFApps with 
{
	iid                  @title: '{i18n>_IID}' @UI.Hidden ;
	fApp                 @title: '{i18n>_FAPP}' @mandatory@UI.Hidden ;
	note                 @title: '{i18n>_NOTE}' @mandatory ;
};
annotate service.FioriAppsTypes with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.BackEndVersions with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.FrontEndVersions with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.TCodes with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};
annotate service.Notes with 
{
	code                 @title: '{i18n>_CODE}';
	name                 @title: '{i18n>_NAME}';
};

/* ================================== VALUE HELPS =================================== */

annotate service.FioriApps with 
{
	appType @Common.ValueList:
	{
		CollectionPath : 'FioriAppsTypes',
		Label : 'FIORIAPPSTYPES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: appType_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

	backVer @Common.ValueList:
	{
		CollectionPath : 'BackEndVersions',
		Label : 'BACKENDVERSIONS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: backVer_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

	frontVer @Common.ValueList:
	{
		CollectionPath : 'FrontEndVersions',
		Label : 'FRONTENDVERSIONS',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: frontVer_code,
				ValueListProperty: 'code',
			},
			{
				$Type: 'Common.ValueListParameterDisplayOnly',
				ValueListProperty: 'name',
			},
		],
	}
	@Common.ValueListWithFixedValues;

	tCode @Common.ValueList:
	{
		CollectionPath : 'TCodes',
		Label : 'TCODES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: tCode_code,
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

annotate service.NotesFApps with 
{
	note @Common.ValueList:
	{
		CollectionPath : 'Notes',
		Label : 'NOTES',
		Parameters : 
		[
			{
				$Type: 'Common.ValueListParameterInOut',
				LocalDataProperty: note_code,
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
