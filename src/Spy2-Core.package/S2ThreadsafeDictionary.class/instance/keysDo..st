accessing
keysDo: aBlock 
	^ mutex critical: [ dict keysDo: aBlock ]