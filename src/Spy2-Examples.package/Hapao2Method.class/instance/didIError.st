testing
didIError
	self testResult ifNil: [ ^ false ].
	^ self testResult errors anySatisfy: [ :aTestCase | aTestCase selector == self selector and: [aTestCase class == self theClass ] ]