installing
installOriginalMethodTemplateOn: aClass
	| originalMethod templateMethod |
	self assert: (oldMethods includesKey: aClass) not.
	
	originalMethod := aClass >> self selector.
	templateMethod := self class >> #tempalteOriginalMethodCall copyFor: aClass.
	
	templateMethod replaceLiterals: { 
		#originalMethod -> originalMethod.
		#spyBlock -> executionBlock.
		#classBeingInstrumented -> aClass.
		#spyProfiler -> self profiler
		 }.
	templateMethod selector: self selector.
	templateMethod responsibleSpy: self.
	oldMethods at: aClass put: originalMethod.
	aClass methodDictionary at: self selector put: templateMethod.
	self selector flushCache.