as yet unclassified
gtSUnitPrint

	^ S2String streamContents: [:s | self asStringOn: s delimiter: Character cr asString]