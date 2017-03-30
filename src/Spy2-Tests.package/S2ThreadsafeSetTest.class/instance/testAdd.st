tests
testAdd
	| rawSet set |
	rawSet := Set new.
	set := S2ThreadsafeSet on: rawSet.
	set add: #foo.
	self assert: (rawSet includes: #foo)
	