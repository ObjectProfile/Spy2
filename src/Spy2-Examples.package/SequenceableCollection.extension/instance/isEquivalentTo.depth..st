*Spy2-Examples
isEquivalentTo: object depth: n
	"object isCollection ifFalse: [ ^ false ]."
	self == object ifTrue: [ ^ true ].
	self class ~~ object class ifTrue: [ ^ false ].
	self size = object size ifFalse: [ ^ false ].

	n = 0 ifTrue: [ ^ false ].
	
	self with: object do: [ :e1 :e2 | 
		(e1 isEquivalentTo: e2 depth: (n - 1))
			ifFalse: [ ^ false ] ].
		
	^ true