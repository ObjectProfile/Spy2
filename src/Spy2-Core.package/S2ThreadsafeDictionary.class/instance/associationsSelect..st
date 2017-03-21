enumerating
associationsSelect: aBlock
	^ mutex critical: [ dict associationsSelect: aBlock ]