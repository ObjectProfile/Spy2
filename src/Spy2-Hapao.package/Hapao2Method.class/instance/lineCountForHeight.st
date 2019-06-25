as yet unclassified
lineCountForHeight
	^self compiledMethod ifNotNil: [
	 	(100 * (self numberOfLinesOfCode min: 100) / (self class maxLines min: 100)) max: 1].