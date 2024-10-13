-- meta data minerals
select
    idGeomaterial,
    idGroup,
    descNameCorrected,
    rtrim(ltrim(descElements, '['), ']') as descElements,
    descEntryTypeText,
    vlDiscoveryYear,
    vlWeighting,
    
    -- hand-sample features
    descDiapheny,
    descCleavage,
    descParting,
    descTenacity,
    descColour,
    descLustreType,
    descStreak,
    descDescriptionShort,
    descCleavegeType,
    descFractureType,
    descMorphology,
    descTwinning,
    
    dtUpdatedTime

from silver_geomaterials
where descEntryTypeText = 'mineral'
order by descName