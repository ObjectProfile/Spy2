accessing
originalMethod: aCompiledMethod
	self assert: [ aCompiledMethod isSpy not ].
	originalMethod := aCompiledMethod 