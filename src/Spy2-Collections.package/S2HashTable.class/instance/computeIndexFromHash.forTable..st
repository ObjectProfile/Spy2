as yet unclassified
computeIndexFromHash: aHash forTable: aTable
	^ (aHash \\ aTable size) + 1.