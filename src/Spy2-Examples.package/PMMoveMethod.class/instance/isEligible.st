testing
isEligible
	^ self originalMethod isEligible and: [ self isNotCalledByMyClass ]