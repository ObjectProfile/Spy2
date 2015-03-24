private - method template
templateSuperCall
	| returnValue |	
	returnValue := super spySelector.
	self class == #classBeingInstrumented ifTrue: [ 
		[ #spyBlock
			value: #spyProfiler 
			value: self 
			value: returnValue ] spyProtected ].
	^ returnValue