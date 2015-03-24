*Spy2-Examples
isStateEqual: anObject
	| index |
	self class == anObject class ifFalse: [ ^ false ].
	index := self class instSize.
	[index > 0]
		whileTrue: 
			[ (self instVarAt: index) == (anObject instVarAt: index) ifFalse: [ ^ false ].
			  index := index - 1].
	^ true
