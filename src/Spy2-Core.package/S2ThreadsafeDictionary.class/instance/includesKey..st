testing
includesKey: key
	^ mutex critical: [ dict includesKey: key ]