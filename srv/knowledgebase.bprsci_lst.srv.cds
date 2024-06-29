/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPRSCI
App: BPRSCI_LST (Scope Items)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';
using { knowledgebase.sapobjects.db as SAPOBJECTS } from '../db/knowledgebase.sapobjects.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bprsci_lst/v1')
service bprsci_lst
{
	entity BPScopeItems as projection on BESTPRACTICES.BPScopeItems;

	entity BPSICountries as projection on BESTPRACTICES.BPSICountries;

	entity BPVariants as projection on BESTPRACTICES.BPVariants;

	entity BPTasks as projection on BESTPRACTICES.BPTasks;

	/*  -- Value Helps */
	@readonly entity BPRoles as projection on BESTPRACTICES.BPRoles
	{
		*,
	};
	@readonly entity BPVersions as projection on BESTPRACTICES.BPVersions
	{
		*,
	};
	@readonly entity Components as projection on SAPOBJECTS.Components
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
