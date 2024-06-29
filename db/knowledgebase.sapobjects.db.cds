/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Object: sapobjects (sapobjects)
======================================================================================= */

namespace knowledgebase.sapobjects.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: FioriApps (Fiori Apps) Fiori Apps */
entity FioriApps
{
	key code            	 : String (30);
		name                 : String (50);
		descr                : String (250);
		semanticAction       : String (50);
		link                 : String (250);
		lighthouse           : Boolean ;
		productCategory      : String (100);
		database             : String (100);
		appType              : Association to FioriAppsTypes;
		tCode                : Association to TCodes;
		frontVer             : Association to FrontEndVersions;
		backVer              : Association to BackEndVersions;
		frontSCVer           : String (100);
		backSCVer            : String (100);
		frontStackVer        : String (100);
		backStackVer         : String (100);
		mfk_notesfapps       : Composition of many NotesFApps on mfk_notesfapps.fApp = $self;
};
/* == Entity: TCodes (Transactions Codes) Transaction Codes */
entity TCodes
{
	key code            	 : String (30);
		name                 : String (50);
		component            : Association to Components not null;
};
/* == Entity: Modules (Modules) S4/Hana Modules */
entity Modules
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: Components (Components) S4/Hana Components */
entity Components
{
	key code            	 : String (30);
		name                 : String (50);
		module               : Association to Modules not null;
};
/* == Entity: Notes (SAP Support Notes) SAP Support Notes */
entity Notes
{
	key code            	 : String (30);
		name                 : String (50);
		mfk_notesfapps       : Composition of many NotesFApps on mfk_notesfapps.note = $self;
};
/* == Entity: NotesFApps (Notes for Fiori Apps) Fiori Apps required notes */
entity NotesFApps
{
	key iid             	 : UUID ;
		fApp                 : Association to FioriApps not null;
		note                 : Association to Notes not null;
};
/* == Entity: FrontEndVersions (Fron End Versions) Version of SAP Front Ends */
entity FrontEndVersions
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: BackEndVersions (BackEnd Versions) Versions of SAP Back Ends */
entity BackEndVersions
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: FioriAppsTypes (FioriAppsTypes) Types of Fiori Apps */
entity FioriAppsTypes
{
	key code            	 : String (30);
		name                 : String (50);
		atype                : String (20) not null;
};