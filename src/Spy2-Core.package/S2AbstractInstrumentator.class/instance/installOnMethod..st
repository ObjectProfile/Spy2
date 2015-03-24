private - template method
installOnMethod: method
	| spyMethod templateMethod|
	self assert: [ method isSpy not ] description: 
	'Trying to instrument a previously instrumented method.
	To clean up Spy please run: S2Profiler remove'.

	spyMethod := self profiler createSpy: method.
	spyMethod originalMethod: method.
	
	method selector flushCache.
	templateMethod := self class templateMethodForNumberOfArguments: method numArgs.
	templateMethod := templateMethod copyFor: method methodClass.
	
	templateMethod replaceLiterals: 
		{#metaObject -> spyMethod. 
		 #selector -> method selector}.
	templateMethod selector: method selector.
	method methodClass methodDictionary at: method selector put: templateMethod.
	
	spyMethod instrumentedMethod: templateMethod.
	
	^ templateMethod