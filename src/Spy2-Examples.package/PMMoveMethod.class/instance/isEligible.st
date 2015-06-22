testing
isEligible
	^ self originalMethod isEligible and: [ (self incomingClasses includes: self classSpy theClass) not ]