as yet unclassified
initialize: aCapacity
	dictionary := self dictionaryClass new: aCapacity.
	orderedKeys := Array new: aCapacity.