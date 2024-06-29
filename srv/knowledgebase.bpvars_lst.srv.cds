/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPVARS
App: BPVARS_LST (Variants)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bpvars_lst/v1')
service bpvars_lst
{
	entity BPVariants as projection on BESTPRACTICES.BPVariants;

	entity BPVariantsTasks as projection on BESTPRACTICES.BPVariantsTasks;

	/*  -- Value Helps */
	@readonly entity BPScopeItems as projection on BESTPRACTICES.BPScopeItems
	{
		*,
	};
	@readonly entity BPTasks as projection on BESTPRACTICES.BPTasks
	{
		*,
	};

	/*  -- UnBound Actions */
};
