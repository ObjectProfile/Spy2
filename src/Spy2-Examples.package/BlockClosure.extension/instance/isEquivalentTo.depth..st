*Spy2-Examples
isEquivalentTo: object depth: n
	self class == object class ifFalse: [ ^ false ].
	^ self sourceNode = object sourceNode