/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPVERS
App: BPVERS_LST (Best Practices Versions)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bpvers_lst/v1')
service bpvers_lst
{
	entity BPVersions as projection on BESTPRACTICES.BPVersions;

	/*  -- Value Helps */

	/*  -- UnBound Actions */
};
