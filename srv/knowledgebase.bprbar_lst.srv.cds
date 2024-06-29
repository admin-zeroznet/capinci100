/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPRBAR
App: BPRBAR_LST (Business Areas)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bprbar_lst/v1')
service bprbar_lst
{
	entity BPBusinessAreas as projection on BESTPRACTICES.BPBusinessAreas;

	entity BPAreasScopes as projection on BESTPRACTICES.BPAreasScopes;

	/*  -- Value Helps */
	@readonly entity BPLobs as projection on BESTPRACTICES.BPLobs
	{
		*,
	};
	@readonly entity BPScopeItems as projection on BESTPRACTICES.BPScopeItems
	{
		*,
	};

	/*  -- UnBound Actions */
};
