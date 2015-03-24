delegation
hash
	^ self originalMethod hash bitXor: super hash
