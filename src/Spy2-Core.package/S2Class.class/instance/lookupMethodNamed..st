accessing - computed
lookupMethodNamed: aSelector
	^ (self hasMethodNamed: aSelector)
			ifTrue: [ self localMethodAt: aSelector ]
			ifFalse: [ self superclass lookupMethodNamed: aSelector ]