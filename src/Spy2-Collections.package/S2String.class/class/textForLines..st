as yet unclassified
textForLines: aStringList 
	 
	| eol | 
	eol := S2String eol. 
	^aStringList 
		inject: '' 
		into: [:txt :line | txt , line , eol]