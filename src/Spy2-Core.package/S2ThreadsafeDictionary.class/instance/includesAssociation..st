testing
includesAssociation: anAssociation
	^ mutex critical: [ dict includesAssociation: anAssociation ]