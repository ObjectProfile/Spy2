*Spy2-Examples
unitTestsReferencingMe
	"
	Return the list of unit tests that reference me
	RTView unitTestsReferencingMe
	"
	| referencingUnitTest |
	referencingUnitTest := (SystemNavigation new allReferencesTo: self binding) collect: #realClass.
	referencingUnitTest := referencingUnitTest select: [ :c | c inheritsFrom: TestCase ].
	^ referencingUnitTest