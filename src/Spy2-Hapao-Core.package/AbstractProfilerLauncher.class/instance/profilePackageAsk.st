public
profilePackageAsk
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profilePackageAsk
	"

	| packageNamesArrayOfRegExp |
	packageNamesArrayOfRegExp := UIManager default
		request:
			'Enter a pattern of a Package (e.g., ''Trachel'', ''Trach* Roassal*'')'
		initialAnswer: 'Trachel Roassal2*'
		title: 'Enter the name of a package to measure the coverage'.
	packageNamesArrayOfRegExp ifNil: [ ^ nil ].
	packageNamesArrayOfRegExp := packageNamesArrayOfRegExp trimBoth.
	self profilePackagesMatching: packageNamesArrayOfRegExp.
	self recordEntry: packageNamesArrayOfRegExp