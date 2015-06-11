*Spy2-Examples-PMove
isEligible
	^ self hasInstVarRef not and: [ self dep size >= 4 and: [ self methodClass methods size > 1 ] ]