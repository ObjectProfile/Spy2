as yet unclassified
computeIndex: anObject
	^ self computeIndexFromHash: (self hashFor: anObject) forTable: self table.