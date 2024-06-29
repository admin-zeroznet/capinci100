/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: TCODES
App: TCODES_LST (Transactions Codes)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.sapobjects.db as SAPOBJECTS } from '../db/knowledgebase.sapobjects.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/tcodes_lst/v1')
service tcodes_lst
{
	entity TCodes as projection on SAPOBJECTS.TCodes;

	/*  -- Value Helps */
	@readonly entity Components as projection on SAPOBJECTS.Components
	{
		*,
	};

	/*  -- UnBound Actions */
};
