testing
doIInstantiateCompareWith: groupOfMethods
	"Return true if I instantiate some classes that the argument do not instantiate"
	counting ifEmpty: [ ^ false ].

	^ counting associations anySatisfy: [ :assoc |
			| class nbOfInstances scopedChildren nbOfInstancesByScopedChildren |
			class := assoc key.
			nbOfInstances := assoc value. 
			scopedChildren := self calledMethods intersection: groupOfMethods.
			nbOfInstancesByScopedChildren := 
				scopedChildren inject: 0 into: [ :sum :method | sum + (method instancesOf: class) ].
			nbOfInstances > nbOfInstancesByScopedChildren
			]
	