accessing
keyAtIdentityValue: value 
	^ mutex critical: [ dict keyAtIdentityValue: value  ]