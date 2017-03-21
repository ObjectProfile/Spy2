accessing
bindingsDo: aBlock
	^ mutex critical: [ dict bindingsDo: aBlock ]