utils
runCount
	self unitTestResult ifNil: [ ^ 0 ].
	^ self unitTestResult runCount