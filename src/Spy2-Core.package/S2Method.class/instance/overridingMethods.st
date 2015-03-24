accessing - computed
overridingMethods
	"Return the list of overriding methods"

	^ self classSpy allSubclasses
		select: [ :cls | cls hasMethodNamed: self selector ]
		thenCollect: [ :cls | cls >> self selector ]