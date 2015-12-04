testing
isTest
	^ (self asString findString: 'test' startingAt: 0 caseSensitive: true) > 0 and: [ self isInTestCase ]