accessing
keyAtValue: value ifAbsent: exceptionBlock
	^ mutex critical: [ dict keyAtValue: value ifAbsent: exceptionBlock ]