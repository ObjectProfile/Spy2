as yet unclassified
asCommaStringAnd
	"Return collection printed as 'a, b and c' "

	^S2String streamContents: [:s | self asStringOn: s delimiter: ', ' last: ' and ']
		