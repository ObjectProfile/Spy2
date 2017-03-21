accessing
collect: aBlock
	^ mutex critical: [ dict collect: aBlock ]