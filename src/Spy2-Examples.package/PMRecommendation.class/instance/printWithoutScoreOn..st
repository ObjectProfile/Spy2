printing
printWithoutScoreOn: s
	s nextPutAll: method methodClass name.
	s nextPut: $..
	s nextPutAll: method selector.
	s nextPutAll: ' -> '.
	s nextPutAll: targetClass name.