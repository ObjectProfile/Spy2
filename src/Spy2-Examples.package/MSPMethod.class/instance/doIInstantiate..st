testing
doIInstantiate: aClass
	"Return true if I instantiate a Class"
	^ self doIInstantiate: aClass compareWith: self profiler producingMethods
