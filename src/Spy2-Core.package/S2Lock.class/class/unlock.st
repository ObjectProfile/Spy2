accessing
unlock

	self isLocked ifFalse: [ Error signal: 'The process is not locked' ].
	self value: false