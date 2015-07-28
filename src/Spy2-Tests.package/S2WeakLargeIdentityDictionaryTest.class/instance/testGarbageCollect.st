as yet unclassified
testGarbageCollect
	|o|
	o := Object new.
	self deny: (dict includesKey: o).
	dict at: o ifAbsentPut: 'foo'.
	self assert: (dict includesKey: o).
	o := nil.
	Smalltalk garbageCollect; garbageCollect.
	self deny: (dict includesKey: o).