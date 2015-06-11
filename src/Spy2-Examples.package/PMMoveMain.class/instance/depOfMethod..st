algorithm
depOfMethod: cm
	"This will be improved in the future. We should also use a profiling technique to know which methods are called by cm"
	| methodSpy classSpy |
	profiler ifNil: [ ^ #() ].
	"profiler ifNil: [ ^ cm referencedClasses asArray ]."
	
	"We check this if the method belongs to the spy class. If the method is an extension it does not appear"
	classSpy := profiler >> cm methodClass name.
	(classSpy hasLocalMethod: cm selector)
		ifFalse: [ ^ #() ]. 
	methodSpy := classSpy >> cm selector.
	^ methodSpy hasBeenExecuted 
		ifTrue: [ methodSpy dependentClasses, cm referencedClasses asArray ]
		ifFalse: [ 
			methodsToTests add: cm. 
			#() ] 