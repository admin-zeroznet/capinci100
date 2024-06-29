/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPTASK
App: BPTASK_LST (Scope Items Tasks (Steps))
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';
using { knowledgebase.sapobjects.db as SAPOBJECTS } from '../db/knowledgebase.sapobjects.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bptask_lst/v1')
service bptask_lst
{
	entity BPTasks as projection on BESTPRACTICES.BPTasks;

	/*  -- Value Helps */
	@readonly entity BPRoles as projection on BESTPRACTICES.BPRoles
	{
		*,
	};
	@readonly entity BPScopeItems as projection on BESTPRACTICES.BPScopeItems
	{
		*,
	};
	@readonly entity FioriApps as projection on SAPOBJECTS.FioriApps
	{
		*,
	};
	@readonly entity TCodes as projection on SAPOBJECTS.TCodes
	{
		*,
	};

	/*  -- UnBound Actions */
};
