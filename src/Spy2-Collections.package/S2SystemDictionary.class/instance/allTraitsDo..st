as yet unclassified
allTraitsDo: aBlock
	"Evaluate the argument, aBlock, for each trait in the system."

	^self traitNames do: [:name | aBlock value: (self at: name)]