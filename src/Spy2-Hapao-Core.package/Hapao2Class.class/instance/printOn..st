metric
printOn: str
	super printOn: str.
	str nextPutAll: ' ('.
	str nextPutAll: self coverage asString.
	str nextPutAll: ' %)'.