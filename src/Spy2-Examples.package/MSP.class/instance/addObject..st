counting
addObject: anObject
	(allObjects at: anObject class ifAbsentPut: [ OrderedCollection new ]) 
		add: anObject