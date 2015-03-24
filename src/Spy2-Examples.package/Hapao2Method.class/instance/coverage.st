metrics
coverage
	^ self isCovered ifTrue: [ 100 ] ifFalse: [ 0 ]