/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: EACAPA
App: EACAPA_LST (Capacities)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';
using { knowledgebase.enterprisearch.db as ENTERPRISEARCH } from '../db/knowledgebase.enterprisearch.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/eacapa_lst/v1')
service eacapa_lst
{
	entity EACapacities as projection on ENTERPRISEARCH.EACapacities;

	entity EASICap as projection on ENTERPRISEARCH.EASICap;

	/*  -- Value Helps */
	@readonly entity BPScopeItems as projection on BESTPRACTICES.BPScopeItems
	{
		*,
	};
	@readonly entity EACapGroups as projection on ENTERPRISEARCH.EACapGroups
	{
		*,
	};

	/*  -- UnBound Actions */
};
