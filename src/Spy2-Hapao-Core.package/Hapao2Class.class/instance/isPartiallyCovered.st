testing
isPartiallyCovered
	^ self allMethods isEmpty or: [ self allMethods anySatisfy: #isCovered ]