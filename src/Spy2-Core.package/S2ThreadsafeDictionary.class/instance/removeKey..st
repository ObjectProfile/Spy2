accessing
removeKey: key 
	^ mutex critical: [ dict removeKey: key ]