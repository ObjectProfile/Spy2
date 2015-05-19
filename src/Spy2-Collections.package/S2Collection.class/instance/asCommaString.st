as yet unclassified
asCommaString
	"Return collection printed as 'a, b, c' "

	^S2String streamContents: [:s | self asStringOn: s delimiter: ', ']
		