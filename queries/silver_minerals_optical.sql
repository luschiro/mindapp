-- meta data minerals
select
    idGeomaterial,
    idGroup,
    descName,
    rtrim(ltrim(descElements, '['), ']') as descElements,
    descEntryTypeText,
    vlDiscoveryYear,
    vlWeighting,
    
    -- optical features   
    descOpticalType,
    descOpticalSign,
    descOpticalDispersion,
    descOpticalPleaochroism,
    descOpticalPleochroismDescription,
    descOpticalBirefringence,
    descOpticalComments,
    descOpticalColour,
    descOpticalInternal,
    descOpticalTropic,
    descOpticalAnisotropism,
    descOpticalBireflectance,
    descOpticalR,

    vlOpticalAlpha,
    vlOpticalBeta,
    vlOpticalGamma,
    vlOpticalOmega,
    vlOpticalEpsilon,
    vlOpticalAlpha2,
    vlOpticalBeta2,
    vlOpticalGamma2,
    vlOpticalOmega2,
    vlOpticalEpsilon2,

    vlOpticalLn,
    vlOpticalLn2,
    vlOptical2VCalc,
    vlOptical2VMeasured,
    vlOptical2VCalc2,
    vlOptical2VMeasured2,

    vlOpticalAlphaError,
    vlOpticalBetaError,
    vlOpticalGammaError,
    vlOpticalOmegaError,
    vlOpticalEpsilonError,
    vlOpticalNError,
    vlOptical2VCaclError,
    vlOptical2VMeasuredError,

    dtUpdatedTime

from silver_geomaterials
where descEntryTypeText = 'mineral'
order by descName