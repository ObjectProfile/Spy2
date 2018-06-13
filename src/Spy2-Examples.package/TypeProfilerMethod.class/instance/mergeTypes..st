hooks
mergeTypes: objects
	|merge|
	merge := OrderedCollection new.
	types with: objects do:[ :class :object|
			merge add: (self merge: class with: object class).
		].
	types := merge.
	
	