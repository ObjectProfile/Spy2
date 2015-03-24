util
generate: profilerName category: aCategory
	"
	
	Example of usage:
	self generate: 'S2C' category: 'S2py-Counting'
	"
	
	| profiler methodSpy classSpy packageSpy  |
	self assert: [ profilerName first isUppercase ].
	self assert: [ aCategory notEmpty ].
	
	profiler := S2Profiler subclass: profilerName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory.
		
	methodSpy := S2Method subclass: (profilerName, 'Method') asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory.
	
	classSpy := S2Class subclass: (profilerName, 'Class') asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory.

	packageSpy := S2Package subclass: (profilerName, 'Package') asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory.
		
	profiler class compile: 'spyClassForPackage', String cr, String tab, ' ^ ', packageSpy name classified: 'hooks'.
	packageSpy class compile: 'spyClassForClass', String cr, String tab, ' ^ ', classSpy name classified: 'hooks'.
	classSpy class compile: 'spyClassForMethod', String cr, String tab, ' ^ ', methodSpy name classified: 'hooks'.
	methodSpy compile: 'beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."' classified: 'hooks'.