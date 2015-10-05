public
profilePackageAsk
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profilePackageAsk
	"

	| packageName |
	packageName := UIManager default
		request: 'Enter a pattern of a class (e.g., Roassal2)'
		initialAnswer: 'RTView'
		title: 'Enter the name of a package to measure the coverage'.
	packageName ifNil: [ ^ nil ].
	packageName := packageName trimBoth.
	self profilePackageNamed: packageName