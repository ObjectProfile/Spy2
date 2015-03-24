accessing
memoryOf: aClass
	"Return the amount of memory space (in bytes) consumed by this method by instantiating aClass"
	"Works well even if aClass someInstance return nil"
	^ (self instancesOf: aClass) * aClass someInstance sizeInMemory