/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Transaction: BPRLOB
App: BPRLOB_LST (Lobs)
======================================================================================= */

namespace knowledgebase.srv;

/* ==================================== REFERENCES ==================================== */

using { knowledgebase.bestpractices.db as BESTPRACTICES } from '../db/knowledgebase.bestpractices.db';

/* ====================================== SERVICE ===================================== */

@(path:'CAPINCI100/knowledgebase/bprlob_lst/v1')
service bprlob_lst
{
	entity BPLobs as projection on BESTPRACTICES.BPLobs;

	entity BPBusinessAreas as projection on BESTPRACTICES.BPBusinessAreas;

	/*  -- Value Helps */

	/*  -- UnBound Actions */
};
