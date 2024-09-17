with t as (
 select
  column000 as idTable,
  id as idGeomaterial,
  longid as idLongId,
  guid as idGUID,
  name as descName,
  updttime as dtUpdatedTime,
  mindat_formula as descMindatFormula,
  mindat_formula_note as descMindatFormulaNote,
  ima_formula as descImaFormula,
  ima_status as descImaStatus, -- category, array
  ima_notes as descImaNotes, -- category, array
  varietyof as idVarietOf,
  synid as idSyn, -- ??
  
  polytypeof as idPolyTypeOf,
  groupid as idGroup,
  entrytype as idEntryType,
  entrytype_text as descEntryTypeText,
  description_short as descDescriptionShort,

  impurities as descImpurities,
  elements as descElements, -- array
  sigelements as descSigElements, -- array 
  tlform as descTlForm,
  cim as idCIM,
  occurrence as descOccurrence,
  otheroccurrence as descOtherOccurrence,
  industrial as descIndustrial,
  try_cast(discovery_year as int32) as vlDiscoveryYear,
  
  diapheny as descDiapheny,
  cleavage as descCleavage,
  parting as descParting,
  tenacity as descTenacity,
  colour as descColour,

  try_cast(csmetamict as int32) as vlCsMetamict,
  
  opticalextinction descOpticalExtinction,
  hmin as vlHMin,
  try_cast(hardtype as int16) as vlHardType,
  hmax as vlHmax,
  try_cast(vhnmin as int32) as vlVhnMin,
  try_cast(vhnmax as int32) as vlVhnMax,
  try_cast(vhnerror as int32) as vlVhnerror,
  vhng as vlVhng,
  vhns as vlVhns,
  luminescence descLuminescence,
  lustre as descLustre,
  lustretype as descLustreType,
  aboutname as descAboutName,
  other as descOtherDescription,
  streak as descStreak,
  csystem as descCSystem,
  try_cast(cclass as int16) as vlCClass,
  try_cast(spacegroup as int16) as vlSpaceGroup,
  
  try_cast(a as double) as vlA,
  try_cast(b as double) as vlB,
  try_cast(c as double) as VlC,
  try_cast(alpha as double) as vlAlpha,
  try_cast(beta as double) as vlBeta,
  try_cast(gamma as double) as vlGamma,
  
  try_cast(aerror as int16) as vlAError,
  try_cast(berror as int16) as vlBError,
  try_cast(cerror as int16) as vlCError,
  try_cast(alphaerror as int16) as vlAlphaError,
  try_cast(betaerror as int16) as vlBetaError,
  try_cast(gammaerror as int16) as vlGammaError,
  va3 as vlVa3,
  
  try_cast(z as int16) as vlZ,
  try_cast(dmeas as double) as vlDMeas,
  try_cast(dmeas2 as double) as vlDMeas2,
  try_cast(dcalc as double) as vlDCalc,
  try_cast(dmeaserror as int16) as vlDMeasError,
  try_cast(dcalcerror as int16) as vlDCalcError,
  
  cleavagetype descCleavageType,
  fracturetype as descFraactureType,
  morphology as descMorphology,
  twinning as descTwinning,
  epitaxidescription as descEpitaxDescription,
  
  opticaltype as descOpticalType,
  opticalsign descOpticalSign,
  try_cast(opticalalpha as double) as vlOpticalAlpha,
  try_cast(opticalbeta as double) as vlOpticalBeta,
  try_cast(opticalgamma as double) as vlOpticalGamma,
  try_cast(opticalomega as double) as vlOpticalOmega,
  try_cast(opticalepsilon as double) as vlOpticalEpsilon,
  try_cast(opticalalpha2 as double) as vlOpticalAlpha2,
  try_cast(opticalbeta2 as double) as vlOpticalBeta2,
  
  opticalgamma2 as vlOpticalGamma2,
  opticalepsilon2 as vlOpticalEpsilon2,
  opticalomega2 as vlOpticalOmega2,
  
  try_cast(opticaln as double) as vlOpticalLn,
  try_cast(opticaln2 as double) as vlOpticalLn2,
  try_cast(optical2vcalc as double) as vlOptical2VCalc,
  try_cast(optical2vmeasured as double) as vlOptical2VMeasured,
  optical2vcalc2 as vlOptical2VCalc2,
  optical2vmeasured2 as vlOptical2VMeasured2,
  
  try_cast(opticalalphaerror as int16) as vlOpticalAlphaError,
  try_cast(opticalbetaerror as int16) as vlOpticalBetaError,
  try_cast(opticalgammaerror as int16) as vlOpticalGammaError,
  try_cast(opticalomegaerror as int16) as vlOpticalOmegaError,
  try_cast(opticalepsilonerror as int16) as vlOpticalEpsilonError,
  try_cast(opticalnerror as int16) as vlOpticalNError,
  try_cast(optical2vcalcerror as int16) as vlOptical2VCaclError,
  try_cast(optical2vmeasurederror as int16) as vlOptical2VMeasuredError,
  
  opticaldispersion as descOpticalDispersion,
  opticalpleochroism as descOpticalPleaochroism,
  opticalpleochorismdesc as descOpticalPleochroismDescription,
  opticalbirefringence as descOpticalBirefringence,
  opticalcomments as descOpticalComments,
  opticalcolour as descOpticalColour,
  opticalinternal as descOpticalInternal,
  opticaltropic as descOpticalTropic,
  opticalanisotropism as descOpticalAnisotropism,
  opticalbireflectance as descOpticalBireflectance,
  opticalr as descOpticalR,
  
  uv as descUV,
  ir as descIR,
  magnetism as descMagnetism, -- categor
  
  type_specimen_store as descTypeSpecimenStore,
  commenthard as descCommentHardness,
  
  try_cast(strunz10ed1 as int16) as descStrunz10ed1,
  try_cast(strunz10ed2 as varchar) as descStrunz10ed2,
  try_cast(strunz10ed3 as varchar) as descStrunz10ed3,
  strunz10ed4 as descStrunz10ed4,
  dana8ed1 as descDana8ed1,
  dana8ed2 as descDana8ed2,
  dana8ed3 as descDana8ed3,
  dana8ed4 as descDama8ed4,
  thermalbehaviour descThermalBehaviour,
  commentluster as descCommentLuster,
  commentbreak as descCommentBreak,
  commentdense as descCommentDense,
  commentcrystal as descCommentCrystal,
  commentcolor as descCommentColor,
  electrical as descElectrical,
  tranglide as descTranglide,
  try_cast(nolocadd as int16) as flNoLocAdd,
  specdispm as descSpecDispm,
  spacegroupset as descSpaceGroupSet,
  try_cast(approval_year as int16) as vlApprovalYear,
  try_cast(publication_year as int16) as vlPublicationyear,
  ima_history as descImaHistory,
  rock_parent as idRockParent,
  rock_parent2 as idRockParent2,
  try_cast(rock_root as int16) as flRockRoot,
  rock_bgs_code as descRockBgsCode,
  meteoritical_code as descMeteoriticalCode,
  case when key_elements = '[]' then null else key_elements end as descKeyElements,
  shortcode_ima as descShortcodeIma,
  rimin as vlRiMin,
  rimax as vlRiMax,
  weighting as vlWeighting
  
  
  
  
  -- select
  --   id as idMineral,
  --   longid as idLongId,
  --   guid as idGuid,
  --   name as descName,

  --   -- update
  --   updttime as dtUpdatedAt,
  --    -- chemical information
  --   mindat_formula,
  --   replace(replace(mindat_formula, '<sub>', ''), '</sub>', '') as s1,
  --   replace(replace(s1, '<sup>', '('), '</sup>', ')') as s2,
  --   replace(replace(s2, '<b>', ''), '</b>', '') as descMindatFormula,
  --   mindat_formula_note as descMineralFormulaNote,
  --   ima_formula as descImaFormula,




  --   case
  --     when entrytype = 0 then 'mineral'
  --     when entrytype = 1 then 'synonym'
  --     when entrytype = 2 then 'variety'
  --     when entrytype = 3 then 'mixture'
  --     when entrytype = 4 then 'series'
  --     when entrytype = 5 then 'grouplist'
  --     when entrytype = 6 then 'polytype'
  --     when entrytype = 7 then 'rock'
  --     when entrytype = 8 then 'commodity'
  --   else 'other' end as descEntryType,

   
  --   case when elements = '[]' then null else elements end as descElements,
  --   case when key_elements = '[]' then null else key_elements end as descKeyElements,
  --   lower(csystem) as descCrystalSystem,
    
  --   -- physical properties
  --   lower(colour) as descColour,

  --   -- meta
  --   case when ima_status = '[]' then null else ima_status end as descImaStatus,
  --   case when varietyof != 0 then varietyof else null end as idVarietyOf,
  --   lower(occurrence) as descOccurrence,
  --   case when publication_year != 0 then publication_year else null end as vlPublicationYear,

  from bronze_geomaterials
)

select
  -- idMineral,
  -- descName,
  -- descEntryType,
  -- descMindatFormula,
  -- descElements,
  -- descKeyElements,
  -- descCrystalSystem,
  -- descColour,
  -- descImaStatus,
  -- idVarietyOf,
  -- descOccurrence,
  -- vlPublicationYear,
  -- dtUpdatedAt
*
from t
limit 10
-- order by idMineral asc
