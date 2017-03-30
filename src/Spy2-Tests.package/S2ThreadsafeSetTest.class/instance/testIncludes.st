tests
testIncludes
	| rawSet set |
	rawSet := Set new.
	set := S2ThreadsafeSet on: rawSet.
	rawSet add: #foo.
	self assert: (set includes: #foo)
	