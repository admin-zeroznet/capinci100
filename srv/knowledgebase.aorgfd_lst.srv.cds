/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: AORGFD
App: AORGFD_LST (Authorization Org Fields)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.authorizations.db as AUTHORIZATIONS } from '../db/knowledgebase.authorizations.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/aorgfd_lst/v1')
service aorgfd_lst
{
	entity AuthOrgFields as projection on AUTHORIZATIONS.AuthOrgFields;

	/*  -- Value Helps */

	/*  -- UnBound Actions */
};
