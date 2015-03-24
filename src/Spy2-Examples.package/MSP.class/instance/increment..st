counting
increment: aClass
	counting at: aClass ifAbsentPut: [ 0 ].
	counting at: aClass put: (counting at: aClass) + 1