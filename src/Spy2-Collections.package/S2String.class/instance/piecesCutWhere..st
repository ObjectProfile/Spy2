as yet unclassified
piecesCutWhere: aBlock 
	"Evaluate testBlock for successive pairs of the receiver elements,
	breaking the receiver into pieces between elements where
	the block evaluated to true, and return an OrderedCollection of
	those pieces."
	"'A sentence. Another sentence... Yet another sentence.'
		piecesCutWhere: [:each :next | each = $. and: [next = Character space]]"

	| pieces |
	pieces := OrderedCollection new.
	self piecesCutWhere: aBlock do: [:each | pieces add: each].
	^pieces