as yet unclassified
values
	^Array new: tally streamContents: [ :stream |
		self valuesDo: [ :key | stream nextPut: key ] ]