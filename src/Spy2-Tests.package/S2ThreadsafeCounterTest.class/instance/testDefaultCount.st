tests
testDefaultCount
	|counter|
	counter := S2ThreadsafeCounter new.
	self assert: counter count equals: 0.