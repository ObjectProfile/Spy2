*Spy2-Core-Copying
copyFor: aBehavior
	| copy numberOfLiterals superRef |
	numberOfLiterals := self numLiterals.
	copy := self copy.
	superRef := (self literalAt: numberOfLiterals) copy.
	superRef value: aBehavior.
	copy literalAt: numberOfLiterals put: superRef.
	^ copy