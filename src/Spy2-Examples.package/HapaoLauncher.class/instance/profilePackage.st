public
profilePackage
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profilePackage
	"

	| packageNames index classes packageName |
	packageNames := self lastPackageNames.
	index := UIManager default chooseFrom: packageNames.
	index = 0
		ifTrue: [ ^ self ].
	packageName := packageNames at: index.

	classes := self classesOfPackage: packageName.
	classes size = 0 ifTrue: [ ^ self ].

	self profileClasses: classes