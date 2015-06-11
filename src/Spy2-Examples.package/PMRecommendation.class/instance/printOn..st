printing
printOn: s
	s nextPutAll: method methodClass name.
	s nextPut: $..
	s nextPutAll: method selector.
	s nextPutAll: ' -> '.
	s nextPutAll: targetClass name.
	s nextPutAll: ' ('.
	s nextPutAll: (score asFloat round: 2) asString.
	s nextPutAll: ')'.