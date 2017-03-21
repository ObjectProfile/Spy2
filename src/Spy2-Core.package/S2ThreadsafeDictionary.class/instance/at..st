accessing
at: key
	^ mutex critical: [ dict at: key ]