accessing
keyAtValue: value 
	^ mutex critical: [ dict keyAtValue: value ]