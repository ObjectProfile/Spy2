adding
associationAt: key
	^ mutex critical: [ dict associationAt: key ]