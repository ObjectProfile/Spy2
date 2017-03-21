streaming
<< anObject
	^ mutex critical: [ stream << anObject ]