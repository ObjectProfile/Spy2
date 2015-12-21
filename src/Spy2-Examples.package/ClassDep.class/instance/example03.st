examples
example03
	^ ClassDep new 
		thresholdNumberOfMethods: 700;
		profile: [GTInspector inspect: Object ] onPackagesMatchingExpressions: { 'GT-Inspector' . 'Glamour*' }