/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: EAINDT
App: EAINDT_LST (Industries)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.enterprisearch.db as ENTERPRISEARCH } from '../db/knowledgebase.enterprisearch.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/eaindt_lst/v1')
service eaindt_lst
{
	entity EAIndustries as projection on ENTERPRISEARCH.EAIndustries;

	entity EAIndCap as projection on ENTERPRISEARCH.EAIndCap;

	entity EAIndE2E as projection on ENTERPRISEARCH.EAIndE2E;

	/*  -- Value Helps */
	@readonly entity EACapacities as projection on ENTERPRISEARCH.EACapacities
	{
		*,
	};
	@readonly entity EAE2E as projection on ENTERPRISEARCH.EAE2E
	{
		*,
	};

	/*  -- UnBound Actions */
};
