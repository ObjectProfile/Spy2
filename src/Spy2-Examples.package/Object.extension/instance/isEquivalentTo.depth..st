*Spy2-Examples
isEquivalentTo: object depth: n
	| index |
	self == object ifTrue: [ ^ true ].
	self class ~~ object class ifTrue: [ ^ false ].
	
	n = 0 ifTrue: [ ^ false ].
	
	index := self class instSize.
	[index > 0]
		whileTrue: 
			[ ((object instVarAt: index) isEquivalentTo: (self instVarAt: index) depth: (n - 1)) 
					ifFalse: [ ^ false ].
			  index := index - 1].
		
	^ true