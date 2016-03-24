public
profilePackageAsk
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profilePackageAsk
	"

	| packageName |
	packageName := UIManager default
		request: 'Enter a pattern of a pacakge (e.g., Roassal2 or Trachel)'
		initialAnswer: 'Trachel'
		title: 'Enter the name of a package to measure the coverage'.
	packageName ifNil: [ ^ nil ].
	packageName := packageName trimBoth.
	self profilePackageNamed: packageName