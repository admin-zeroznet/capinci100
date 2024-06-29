/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: EAE2EP
App: EAE2EP_LST (E2E Processes)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';
using { knowledgebase.enterprisearch.db as ENTERPRISEARCH } from '../db/knowledgebase.enterprisearch.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/eae2ep_lst/v1')
service eae2ep_lst
{
	entity EAE2E as projection on ENTERPRISEARCH.EAE2E;

	entity EASIE2E as projection on ENTERPRISEARCH.EASIE2E;

	/*  -- Value Helps */
	@readonly entity BPScopeItems as projection on BESTPRACTICES.BPScopeItems
	{
		*,
	};

	/*  -- UnBound Actions */
};
