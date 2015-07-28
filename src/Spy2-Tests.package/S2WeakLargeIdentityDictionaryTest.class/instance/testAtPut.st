as yet unclassified
testAtPut
	|o1 o2|
	o1 := Object new.
	o2 := Object new.
	dict at: o1 put: 'a'.
	dict at: o2 put: 'b'.
	self assert: dict size equals: 2.
	self assert: (dict at: o1) equals: 'a'.
	self assert: (dict at: o2) equals: 'b'.