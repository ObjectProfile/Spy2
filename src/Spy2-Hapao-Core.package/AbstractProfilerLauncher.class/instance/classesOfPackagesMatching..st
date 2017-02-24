utility
classesOfPackagesMatching: packageNamesArrayOfRegExp
	"aPackageName could be a category name, or a regular expression"
	"
	self new classesOfPackagesMatching: 'Trache* Roassal2*'.
	self new classesOfPackagesMatching: 'Trachel'.
	self new classesOfPackagesMatching: 'Announcements-Core Announcements-Help'.
	"
	| classes relevantPackages |
	classes := OrderedCollection new.
	packageNamesArrayOfRegExp substrings do: [ :s |
		relevantPackages := RPackageOrganizer default packages select: [ :p | s match: p packageName ].
		relevantPackages do: [ :p | classes addAll: p definedClasses ]
	].
	
	^ classes