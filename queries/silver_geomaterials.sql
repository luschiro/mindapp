with t as (
  select
    id as idMineral,
    lower(name) as descName,
    case
      when entrytype = 0 then 'mineral'
      when entrytype = 1 then 'synonym'
      when entrytype = 2 then 'variety'
      when entrytype = 3 then 'mixture'
      when entrytype = 4 then 'series'
      when entrytype = 5 then 'grouplist'
      when entrytype = 6 then 'polytype'
      when entrytype = 7 then 'rock'
      when entrytype = 8 then 'commodity'
    else 'other' end as descEntryType,

    lower(colour) as descColour,
    mindat_formula,

    replace(replace(mindat_formula, '<sub>', ''), '</sub>', '') as s1,
    replace(replace(s1, '<sup>', '('), '</sup>', ')') as s2,
    replace(replace(s2, '<b>', ''), '</b>', '') as descMindatFormula,

    case when elements = '[]' then null else elements end as descElements,
    case when key_elements = '[]' then null else key_elements end as descKeyElements,
    
    lower(csystem) as descCrystalSystem,
    case when ima_status = '[]' then null else ima_status end as descImaStatus,
    
    case when varietyof != 0 then varietyof else null end as idVarietyOf,

    updttime as dtUpdatedAt,
    lower(occurrence) as descOccurrence,

    case when publication_year != 0 then publication_year else null end as vlPublicationYear
      
  from bronze_geomaterials
)

select
  idMineral,
  descName,
  descEntryType,
  descColour,
  descMindatFormula,
  descElements,
  descKeyElements,
  descCrystalSystem,
  descImaStatus,
  idVarietyOf,
  dtUpdatedAt,
  descOccurrence,
  vlPublicationYear
from t
order by idMineral asc
