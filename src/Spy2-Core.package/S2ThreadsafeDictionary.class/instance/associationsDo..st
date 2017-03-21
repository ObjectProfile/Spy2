enumerating
associationsDo: aBlock
	^ mutex critical: [ dict associationsDo: aBlock ]