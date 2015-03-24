*Spy2-Core-Copying
replaceLiteral: anObject by: anotherObject
	1 to: self numLiterals do: [ :i | 
		((self literalAt: i) = anObject)
			ifTrue: [ self literalAt: i put: anotherObject ]
	]