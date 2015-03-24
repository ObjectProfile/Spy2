util
shouldInstallOnClass: aClass
	self assert: [ aClass theNonMetaClass == aClass ] description: 'Can only be called on non meta class'.
	
	^ (self isNotDangerous: aClass)