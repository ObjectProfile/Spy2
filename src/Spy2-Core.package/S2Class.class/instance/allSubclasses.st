accessing - computed
allSubclasses
	allSubclassesCache ifNotNil: [ ^ allSubclassesCache ].
	^ allSubclassesCache := self subclasses inject: #() into: [:sum :cls | sum, {cls}, cls allSubclasses ]