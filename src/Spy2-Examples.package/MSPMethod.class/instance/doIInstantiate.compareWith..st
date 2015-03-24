testing
doIInstantiate: aClass compareWith: groupOfMethods
	"Return true if I instantiate some classes that the argument do not instantiate"
	| nbOfInstances scopedChildren nbOfInstancesByScopedChildren |
	counting ifEmpty: [ ^ false ].
	(counting includesKey: aClass) ifFalse: [ ^ false ].
	
	nbOfInstances := counting at: aClass. 
	scopedChildren := self calledMethods intersection: groupOfMethods.
	nbOfInstancesByScopedChildren := 
		scopedChildren inject: 0 into: [ :sum :method | sum + (method instancesOf: aClass) ].
	^ nbOfInstances > nbOfInstancesByScopedChildren
			
	