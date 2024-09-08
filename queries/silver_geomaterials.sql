select
  id as idMineral,
  lower(name) as descName,
  lower(colour) as descColour,
  mindat_formula as descMindatFormula,

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

  elements as descElements,
  key_elements as descKeyElements,
  
  lower(csystem) as descCrystalSystem,
  lower(ima_status[1]) as descImaStatus,
  varietyof as idVarietyOf,

  updttime as dtUpdatedAt,
  date_trunc('day', updttime) as testin
    
from bronze_geomaterials
