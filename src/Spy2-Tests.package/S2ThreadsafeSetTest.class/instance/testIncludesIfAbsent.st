tests
testIncludesIfAbsent
	| rawSet set testVar |
	testVar := false.
	rawSet := Set new.
	set := S2ThreadsafeSet on: rawSet.
	rawSet add: #foo.
	(set includes: #foo ifAbsent: [ testVar := true ]).
	self deny: testVar.
	(set includes: #bar ifAbsent: [ testVar := true ]).
	self assert: testVar