gt-explanation
explanation
	| s |
	s := WriteStream on: String new.
	s nextPutAll: 'Score on current class: '.
	s nextPutAll: self scoreOnCurrentClassAsString.
	s cr.
	s nextPutAll: 'Score on target class: '.
	s nextPutAll: self scoreOnTargetClassAsString.
	s cr.
	s nextPutAll: 'Diff = '.
	s nextPutAll: self diffBetweenScoresAsString.
	s cr ; cr.
	s nextPutAll: 'Dependencies = '.
	s nextPutAll: (method dep sortedAs: #name) asArray asString.
	s cr ; cr.
	s nextPutAll: '-------'; cr.
	s nextPutAll: 'On the current class:'; cr.
	self currentClass methods do: [ :m |
		s nextPutAll: '   '.
		s nextPutAll: m selector, ' ', ((method simWith: m) asFloat round: 2) asString; cr.
		s nextPutAll: (m dep sortedAs: #name) asArray asString.
		s cr; cr
	]. 

	s cr ; cr.
	s nextPutAll: '-------'; cr.
	s nextPutAll: 'On the target class:'; cr.
	self targetClass methods do: [ :m |
		s nextPutAll: '   '.
		s nextPutAll: m selector, ' ', ((method simWith: m) asFloat round: 2) asString; cr.
		s nextPutAll: (m dep sortedAs: #name) asArray asString.
		s cr; cr
	]. 
	^ s contents