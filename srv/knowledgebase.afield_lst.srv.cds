/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: AFIELD
App: AFIELD_LST (Authorization Fields)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.authorizations.db as AUTHORIZATIONS } from '../db/knowledgebase.authorizations.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/afield_lst/v1')
service afield_lst
{
	entity AuthFields as projection on AUTHORIZATIONS.AuthFields;

	/*  -- Value Helps */

	/*  -- UnBound Actions */
};
