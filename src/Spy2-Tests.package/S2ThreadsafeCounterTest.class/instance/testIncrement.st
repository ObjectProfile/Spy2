tests
testIncrement
	|counter|
	counter := S2ThreadsafeCounter new.
	self assert: counter increment equals: 1.
	self assert: counter increment equals: 2.
	self assert: counter increment equals: 3.
	self assert: (counter increment: 10) equals: 13.