/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPRBRO
App: BPRBRO_LST (Base Roles)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bprbro_lst/v1')
service bprbro_lst
{
	entity BPRoles as projection on BESTPRACTICES.BPRoles;

	/*  -- Value Helps */
	@readonly entity BPBusinessAreas as projection on BESTPRACTICES.BPBusinessAreas
	{
		*,
	};

	/*  -- UnBound Actions */
};
