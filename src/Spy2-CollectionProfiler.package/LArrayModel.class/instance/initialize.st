as yet unclassified
initialize
	nbAt := 0.
	nbAtPut := 0.
	nbDo := 0.
	nbCollect := 0.
	nbSelect := 0.
	creatingMethod := S2Context top ifNotNil: [ :ctx | ctx spyMethod ].
	methodsInvolved := Set new.
	self addMethodInvolved: creatingMethod