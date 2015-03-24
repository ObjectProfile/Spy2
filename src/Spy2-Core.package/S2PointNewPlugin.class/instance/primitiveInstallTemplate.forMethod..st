as yet unclassified
primitiveInstallTemplate: aTemplate forMethod: aMethod
	| template |
	self assert: aMethod isSpy not.
	self storeOriginalMethod: aMethod.
	template := aTemplate copyFor: aMethod methodClass.
	template replaceLiterals:
		{ 
		template selector -> aMethod selector.
		#profiler -> self profiler
		}.
	aMethod methodClass methodDictionary at: aMethod selector put: template.
	aMethod selector flushCache.