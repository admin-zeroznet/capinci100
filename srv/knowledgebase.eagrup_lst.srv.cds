/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: EAGRUP
App: EAGRUP_LST (Capacities Groups)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';
using { knowledgebase.enterprisearch.db as ENTERPRISEARCH } from '../db/knowledgebase.enterprisearch.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/eagrup_lst/v1')
service eagrup_lst
{
	entity EACapGroups as projection on ENTERPRISEARCH.EACapGroups;

	entity EACapacities as projection on ENTERPRISEARCH.EACapacities;

	/*  -- Value Helps */
	@readonly entity BPBusinessAreas as projection on BESTPRACTICES.BPBusinessAreas
	{
		*,
	};

	/*  -- UnBound Actions */
};
