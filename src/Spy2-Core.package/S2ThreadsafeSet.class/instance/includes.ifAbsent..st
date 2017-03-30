testing
includes: anObject ifAbsent: aBlock
	^ mutex critical: [ 
		(set includes: anObject)
			ifFalse: aBlock ]