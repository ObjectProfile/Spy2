as yet unclassified
loadfactor: aFloat 
	loadfactor := aFloat.
	self ensureCapacity: (self capacity / self loadfactor) asInteger.