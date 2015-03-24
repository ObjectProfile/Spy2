accessing - computed
currentRunningTest
	|context|
	context := self spyContext.
	[ context = nil ] whileFalse: [ 
		context spyMethod isTest ifTrue: [ ^ context spyMethod ].
		context := context sender.
	].
	^ nil