testing
isTest
	"Return true if the original method is defined in a unit test and if the method begins with the word 'test'"
	^ (self asString findString: 'test' startingAt: 0 caseSensitive: true) > 0 and: [ self isInTestCase ]