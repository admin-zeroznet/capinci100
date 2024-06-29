/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: COMPON
App: COMPON_LST (Components)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.sapobjects.db as SAPOBJECTS } from '../db/knowledgebase.sapobjects.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/compon_lst/v1')
service compon_lst
{
	entity Components as projection on SAPOBJECTS.Components;

	/*  -- Value Helps */
	@readonly entity Modules as projection on SAPOBJECTS.Modules
	{
		*,
	};

	/*  -- UnBound Actions */
};
