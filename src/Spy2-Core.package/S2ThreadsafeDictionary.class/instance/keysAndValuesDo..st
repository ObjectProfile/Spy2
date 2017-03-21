accessing
keysAndValuesDo: aBlock 
	^ mutex critical: [ dict keysAndValuesDo: aBlock ]