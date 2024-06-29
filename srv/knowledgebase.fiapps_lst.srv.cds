/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: FIAPPS
App: FIAPPS_LST (Fiori Apps)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.sapobjects.db as SAPOBJECTS } from '../db/knowledgebase.sapobjects.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/fiapps_lst/v1')
service fiapps_lst
{
	entity FioriApps as projection on SAPOBJECTS.FioriApps;

	entity NotesFApps as projection on SAPOBJECTS.NotesFApps;

	/*  -- Value Helps */
	@readonly entity BackEndVersions as projection on SAPOBJECTS.BackEndVersions
	{
		*,
	};
	@readonly entity FioriAppsTypes as projection on SAPOBJECTS.FioriAppsTypes
	{
		*,
	};
	@readonly entity FrontEndVersions as projection on SAPOBJECTS.FrontEndVersions
	{
		*,
	};
	@readonly entity Notes as projection on SAPOBJECTS.Notes
	{
		*,
	};
	@readonly entity TCodes as projection on SAPOBJECTS.TCodes
	{
		*,
	};

	/*  -- UnBound Actions */
};
