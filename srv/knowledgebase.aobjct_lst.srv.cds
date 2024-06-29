/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: AOBJCT
App: AOBJCT_LST (Authorization Objects)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.authorizations.db as AUTHORIZATIONS } from '../db/knowledgebase.authorizations.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/aobjct_lst/v1')
service aobjct_lst
{
	entity AuthObjects as projection on AUTHORIZATIONS.AuthObjects;

	/*  -- Value Helps */

	/*  -- UnBound Actions */
};
