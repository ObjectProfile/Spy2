as yet unclassified
similarInstance: newSize

	^self class
		new: newSize 
		chunkSize: self chunkSize 
		arrayClass: self arrayClass
