accessing
lock

	self isLocked ifTrue: [ Error signal: 'The process is already locked' ].
	self value: true