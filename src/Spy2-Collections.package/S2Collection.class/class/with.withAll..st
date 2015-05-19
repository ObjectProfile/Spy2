as yet unclassified
with: anObject withAll: aCollection
	^ (self new: (aCollection size + 1))
		add: anObject;
		addAll: aCollection;
		yourself