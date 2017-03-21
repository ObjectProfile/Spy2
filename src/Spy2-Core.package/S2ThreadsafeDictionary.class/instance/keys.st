accessing
keys
	^ mutex critical: [ dict keys ]