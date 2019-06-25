utilities
classesOfPackage: aPackageName
	"aPackageName could be a category name, or a regular expression"
	"
	self new classesOfPackage: 'Roassal2'
	"
	^ (RPackageOrganizer default packageNamed: aPackageName) definedClasses