as yet unclassified
testIfAbsentPut
	|o|
	o := Object new.
	self deny: (dict includesKey: o).
	self assert: (dict at: o ifAbsentPut: 'foo') equals: 'foo'.
	self assert: (dict at: o) equals: 'foo'