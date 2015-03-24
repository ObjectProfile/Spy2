metrics
numberOfKbUsedByClass: aClass
	"Return the number of kilo bytes used by instances of the provided class"
	^ ((self numberOfInstancesOfClass: aClass) * (aClass someInstance sizeInMemory) / 1000) round: 2
	