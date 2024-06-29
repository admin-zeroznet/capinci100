/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Object: enterprisearch (enterprisearch)
======================================================================================= */

namespace knowledgebase.enterprisearch.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';
using { knowledgebase.bestpractices.db as BESTPRACTICES } from './knowledgebase.bestpractices.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: EAIndustries (Industries) Industries */
entity EAIndustries
{
	key code            	 : String (30);
		name                 : String (50);
		descr                : String (250);
		mfk_eaindcap         : Composition of many EAIndCap on mfk_eaindcap.industry = $self;
		mfk_eainde2e         : Composition of many EAIndE2E on mfk_eainde2e.industry = $self;
};
/* == Entity: EAIndCap (Capacities Industries) Capacities - Industries */
entity EAIndCap
{
	key iid             	 : UUID ;
		industry             : Association to EAIndustries not null;
		capacity             : Association to EACapacities not null;
};
/* == Entity: EACapacities (Capacities) Capacities */
entity EACapacities
{
	key code            	 : String (30);
		name                 : String (50);
		group                : Association to EACapGroups not null;
		descr                : String (250);
		mfk_eaindcap         : Composition of many EAIndCap on mfk_eaindcap.capacity = $self;
		mfk_easicap          : Composition of many EASICap on mfk_easicap.capacity = $self;
};
/* == Entity: EACapGroups (Capacities Groups) Capacities Groups */
entity EACapGroups
{
	key code            	 : String (30);
		name                 : String (50);
		bArea                : Association to BESTPRACTICES.BPBusinessAreas not null;
		descr                : String;     // <attribute type not found> default value assumed;
		mfk_eacapacities     : Composition of many EACapacities on mfk_eacapacities.group = $self;
};
/* == Entity: EASICap (Capacities Scope Items) Capacities Scope Items */
entity EASICap
{
	key code            	 : String (30);
		name                 : String (50);
		capacity             : Association to EACapacities not null;
		sItem                : Association to BESTPRACTICES.BPScopeItems not null;
};
/* == Entity: EAIndE2E (Industries E2E Processes) Industries end to end processes */
entity EAIndE2E
{
	key iid             	 : UUID ;
		industry             : Association to EAIndustries not null;
		process              : Association to EAE2E not null;
};
/* == Entity: EAE2E (End to End processes) End to end processes */
entity EAE2E
{
	key code            	 : String (30);
		name                 : String (50);
		descr                : String;     // <attribute type not found> default value assumed;
		mfk_eainde2e         : Composition of many EAIndE2E on mfk_eainde2e.process = $self;
		mfk_easie2e          : Composition of many EASIE2E on mfk_easie2e.process = $self;
};
/* == Entity: EASIE2E (End to end Scope Items) End to end scope items */
entity EASIE2E
{
	key iid             	 : UUID ;
		process              : Association to EAE2E not null;
		sItem                : Association to BESTPRACTICES.BPScopeItems not null;
};