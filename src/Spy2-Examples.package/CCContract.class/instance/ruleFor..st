as yet unclassified
ruleFor: aMethod
	^ self rules detect: [ :rule | rule method == aMethod ]