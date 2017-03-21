removing
removeKey: key ifAbsent: aBlock 
	^ mutex critical: [ dict removeKey: key ifAbsent: aBlock ]