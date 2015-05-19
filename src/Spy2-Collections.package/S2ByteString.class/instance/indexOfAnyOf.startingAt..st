as yet unclassified
indexOfAnyOf: aCollection startingAt: start
	"Use double dispatching for speed"
	^aCollection findFirstInByteString: self startingAt: start