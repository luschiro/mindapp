-- meta data minerals
select
    idGeomaterial,
    idGroup,
    descName,

    descMindatFormula,

    descElements,
    descKeyElements,
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
    descCleavageType,
    descFractureType,
    descMorphology,
    descTwinning,
    
    dtUpdatedTime

from silver_geomaterials
where descEntryTypeText = 'mineral'
order by descName