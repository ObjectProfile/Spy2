installing
installSuperCallTemplateOn: aClass
	| templateMethod |
	self assert: (oldMethods includesKey: aClass) not.
	
	templateMethod := self class >> #templateSuperCall copyFor: aClass.
	
	templateMethod replaceLiterals: { 
		#spySelector -> self selector.
		#spyBlock -> executionBlock.
		#classBeingInstrumented -> aClass.
		#spyProfiler -> self profiler
		 }.
	templateMethod selector: self selector.
	templateMethod responsibleSpy: self.
	aClass methodDictionary at: self selector put: templateMethod.
	self selector flushCache.