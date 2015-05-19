as yet unclassified
piecesCutWhere: testBlock do: enumerationBlock 
	"Evaluate testBlock for successive pairs of the receiver elements,
	breaking the receiver into pieces between elements where
	the block evaluated to true, and evaluate enumerationBlock
	with each of those pieces."
	"'A sentence. Another sentence... Yet another sentence.'
		piecesCutWhere: [:each :next | each = $. and: [next = Character space]] 
		do: [:each | Transcript show: each printString; cr]"

	| start prevElem nextElem size |
	self isEmpty ifTrue: [^self].
	prevElem := self at: (start := 1).
	2 to: (size := self size) do:
		[:index|
		 nextElem := self at: index.
		(testBlock value: prevElem value: nextElem) ifTrue: 
			[enumerationBlock value: (self copyFrom: start to: index - 1).
			 start := index].
		prevElem := nextElem].
	enumerationBlock value: (self copyFrom: start to: size)