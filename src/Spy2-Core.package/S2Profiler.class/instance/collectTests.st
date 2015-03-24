private - running tests
collectTests

	| tests testClasses |
	tests := OrderedCollection new.
	testClasses := ((self allClasses select: #isTestClass) reject: #isAbstract) collect: #theClass.
	testClasses do: [ :cls |
		cls allTestSelectors do: [ :selector | tests add: (cls selector: selector) ] ].
	^ tests