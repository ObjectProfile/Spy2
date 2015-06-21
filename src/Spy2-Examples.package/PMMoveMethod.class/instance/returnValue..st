hooks
returnValue: value
	value class ~~ self classSpy theClass
		ifTrue: [ dependentClasses add: value class theNonMetaClass ]