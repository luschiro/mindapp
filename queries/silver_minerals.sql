select
	
	idGeomaterial,
	idLongId,
	idGUID,
	descName,
    descNameCorrected,
	descDescriptionShort,
	descColour,
	idRockParent,
	idROckParent2,
	flRockRoot,
	descMeteoriticalCode,
	
	vlWeighting
from silver_geomaterials
where descEntryTypeText = 'mineral'
order by descName

limit 10
