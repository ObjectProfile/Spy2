*Spy2-Core-Testing
writesInstanceVariable
	^ self ast allChildren anySatisfy: [ :node |
		node isVariable and: [ 
			node parent isAssignment and: [ 
				node parent variable = node and: [ 
					node isInstance ] ] ] ]