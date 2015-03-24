*Spy2-Examples
snapshotAsInteger
	| index value |
	index := self class instSize.
	value := self class identityHash.
	[index > 0]
		whileTrue: 
			[	value := value bitShift: 1. 
				value := value bitXor: (self instVarAt: index) identityHash.
			  index := index - 1].
	^ value
