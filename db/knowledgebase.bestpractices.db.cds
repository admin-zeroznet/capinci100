/*===================================================================================== 
CAPINCI 1.00
Business Area: knowledgebase  Object: bestpractices (bestpractices)
======================================================================================= */

namespace knowledgebase.bestpractices.db;

/* ==================================== REFERENCES ==================================== */

using { sme.common.db as COMMON } from './sme.common.db';
using { knowledgebase.enterprisearch.db as ENTERPRISEARCH } from './knowledgebase.enterprisearch.db';
using { knowledgebase.sapobjects.db as SAPOBJECTS } from './knowledgebase.sapobjects.db';

/* ===================================== ENTITIES ===================================== */

/* == Entity: BPLobs (Line of Business) SAP Line of Business */
entity BPLobs
{
	key code            	 : String (30);
		name                 : String (50);
		mfk_bpbusinessareas  : Composition of many BPBusinessAreas on mfk_bpbusinessareas.lob = $self;
};
/* == Entity: BPBusinessAreas (Business Areas) Business Areas */
entity BPBusinessAreas
{
	key code            	 : String (30);
		name                 : String (50);
		lob                  : Association to BPLobs not null;
		mfk_bpareasscopes    : Composition of many BPAreasScopes on mfk_bpareasscopes.bArea = $self;
		mfk_bproles          : Composition of many BPRoles on mfk_bproles.bArea = $self;
		mfk_eacapgroups      : Composition of many ENTERPRISEARCH.EACapGroups on mfk_eacapgroups.bArea = $self;
};
/* == Entity: BPAreasScopes (Areas Scopes) Scopes x Areas */
entity BPAreasScopes
{
	key iid             	 : UUID ;
		bArea                : Association to BPBusinessAreas not null;
		sItem                : Association to BPScopeItems not null;
};
/* == Entity: BPVersions (BP Versions) Best Practices Versions */
entity BPVersions
{
	key code            	 : String (30);
		name                 : String (50);
};
/* == Entity: BPScopeItems (BP Scope Items) Best Practces Scope Items */
entity BPScopeItems
{
	key code            	 : String (30);
		name                 : String (50);
		ver                  : Association to BPVersions not null;
		component            : Association to SAPOBJECTS.Components not null;
		descr                : String (250);
		cluster              : Integer ;
		mfk_bpsicountries    : Composition of many BPSICountries on mfk_bpsicountries.sItem = $self;
		mfk_bptasks          : Composition of many BPTasks on mfk_bptasks.sItem = $self;
		mfk_bpvariants       : Composition of many BPVariants on mfk_bpvariants.sItem = $self;
		mfk_easicap          : Composition of many ENTERPRISEARCH.EASICap on mfk_easicap.sItem = $self;
		mfk_easie2e          : Composition of many ENTERPRISEARCH.EASIE2E on mfk_easie2e.sItem = $self;
};
/* == Entity: BPVariants (BP Variants) Best Practices Scope Variants */
entity BPVariants
{
	key code            	 : String (30);
		name                 : String (50);
		sItem                : Association to BPScopeItems not null;
		mfk_bpvariantstasks  : Composition of many BPVariantsTasks on mfk_bpvariantstasks.variant = $self;
};
/* == Entity: BPVariantsTasks (BP Tasks Variants) Best Practices Tasks Variants */
entity BPVariantsTasks
{
	key iid             	 : UUID ;
		variant              : Association to BPVariants not null;
		task                 : Association to BPTasks not null;
};
/* == Entity: BPTasks (BP Tasks) Best Practices Scope Items Tasks */
entity BPTasks
{
	key iid             	 : UUID ;
		id                   : String (30) not null;
		sItem                : Association to BPScopeItems not null;
		seq                  : Integer ;
		descr                : String (250);
		semanticObject       : String (20);
		semanticAction       : String (20);
		fApp                 : Association to SAPOBJECTS.FioriApps;
		tCode                : Association to SAPOBJECTS.TCodes;
		bRole                : Association to BPRoles;
		mfk_bpvariantstasks  : Composition of many BPVariantsTasks on mfk_bpvariantstasks.task = $self;
};
/* == Entity: BPSICountries (BP Sitems Countries) Scope Items - Countries availability */
entity BPSICountries
{
	key iid             	 : UUID ;
		sItem                : Association to BPScopeItems not null;
		country              : COMMON.Country not null;
};
/* == Entity: BPRoles (Base Roles) Best Practices Base Roles */
entity BPRoles
{
	key code            	 : String (30);
		name                 : String (50);
		bArea                : Association to BPBusinessAreas not null;
		mfk_bptasks          : Composition of many BPTasks on mfk_bptasks.bRole = $self;
};