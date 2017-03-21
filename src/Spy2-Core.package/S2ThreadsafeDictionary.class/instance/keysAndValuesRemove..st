removing
keysAndValuesRemove: keyValueBlock
	^ mutex critical: [ dict keysAndValuesRemove: keyValueBlock ]