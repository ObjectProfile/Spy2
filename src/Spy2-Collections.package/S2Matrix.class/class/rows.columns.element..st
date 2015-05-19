as yet unclassified
rows: rows columns: columns element: element
	^self rows: rows columns: columns
		contents: ((S2Array new: rows*columns) atAllPut: element; yourself)