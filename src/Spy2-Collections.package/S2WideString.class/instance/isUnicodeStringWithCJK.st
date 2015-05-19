as yet unclassified
isUnicodeStringWithCJK

	^self anySatisfy: [:char | Unicode isUnifiedKanji: char charCode]
	