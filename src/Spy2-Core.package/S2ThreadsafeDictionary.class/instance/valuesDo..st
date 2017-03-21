enumerating
valuesDo: aBlock
	^ mutex critical: [ dict valuesDo: aBlock ]