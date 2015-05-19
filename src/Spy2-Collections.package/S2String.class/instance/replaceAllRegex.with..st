as yet unclassified
replaceAllRegex: aRegexString with: anotherSubstring 
	 
	| tempString aCollection | 
	tempString := self. 
	aCollection := aRegexString asRegex matchesIn: tempString. 
	aCollection 
		do: 
			[:subString | tempString := tempString copyReplaceAll: subString with: anotherSubstring]. 
	^tempString