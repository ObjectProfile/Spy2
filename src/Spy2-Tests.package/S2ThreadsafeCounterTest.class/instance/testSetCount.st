tests
testSetCount
	|counter|
	counter := S2ThreadsafeCounter new.
	counter setCount: 13.
	self assert: counter count equals: 13.