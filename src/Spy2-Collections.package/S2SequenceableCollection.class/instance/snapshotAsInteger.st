as yet unclassified
snapshotAsInteger 
	| value |
	value := self class identityHash.
	self do: [:v | 
		value := value bitShift: 1.
		value := value bitXor: v snapshotAsInteger ].
	^ value
"	^( value \\ 4096) + 1"