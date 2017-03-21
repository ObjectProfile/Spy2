binding
bindingOf: varName
	^ mutex critical: [ dict bindingOf: varName ]