testing
didIPass
	self testResult ifNil: [ ^ true ].
	^ self testResult expectedPasses
		anySatisfy: [ :aTestCase | aTestCase selector == self selector and: [ aTestCase class == self theClass ] ]