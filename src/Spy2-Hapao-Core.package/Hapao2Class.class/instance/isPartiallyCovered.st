testing
isPartiallyCovered
	^ self allRelevantMethods isEmpty or: [ self allRelevantMethods anySatisfy: #isCovered ]