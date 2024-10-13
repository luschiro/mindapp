-- meta data minerals
select
    idGeomaterial,
    idGroup,
    descNameCorrected,
    rtrim(ltrim(descElements, '['), ']') as descElements,
    descEntryTypeText,
    vlDiscoveryYear,
    vlWeighting,
    
    -- crystallography features
    descCSystem,
    vlCClass,
    vlSpaceGroup,
    descSpaceGroupSet,
    vlA,
    vlB,
    vlC,
    vlAlpha,
    vlBeta,
    vlGamma,
    vlAError,
    vlBError,
    vlCError,
    vlAlphaError,
    vlBetaError,
    vlGammaError,
    vlVa3,
    vlZ,
    descMorphology,
    descSpaceGroupSet,

    dtUpdatedTime

from silver_geomaterials
where descEntryTypeText = 'mineral'
order by descName