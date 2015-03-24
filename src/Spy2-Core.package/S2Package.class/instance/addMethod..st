accessing
addMethod: spyMethod
	spyMethod classSpy package = self ifTrue: [ ^ self ].
	spyMethod classSpy isMeta
				ifFalse: [ self classExtensions add: spyMethod ]
				ifTrue: [ self metaclassExtensions add: spyMethod ]