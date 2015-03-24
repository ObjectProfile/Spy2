private - method template
tempalteOriginalMethodCall
	| returnValue |	
	returnValue := #originalMethod valueWithReceiver: self arguments: #().
	self class == #classBeingInstrumented ifTrue: [ 
		[ #spyBlock
			value: #spyProfiler 
			value: self 
			value: returnValue ] spyProtected ].
	^ returnValue