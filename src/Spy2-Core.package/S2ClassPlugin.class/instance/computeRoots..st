utility
computeRoots: classes
	| roots |
	roots := classes copy asOrderedCollection.
	classes do: [:aClass | aClass allSubclasses do: [ :el | roots remove: el ifAbsent: [ ] ] ].
	^ roots