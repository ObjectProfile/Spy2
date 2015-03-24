testing
didIFail
	self testResult ifNil: [ ^ false ].
	^ self testResult failures
		anySatisfy: [ :aTestCase | aTestCase selector == self selector and: [ aTestCase class == self theClass ] ]