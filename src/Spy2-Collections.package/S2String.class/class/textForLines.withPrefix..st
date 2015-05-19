as yet unclassified
textForLines: aStringList withPrefix: aBlock 
	 
	| eol lineNo | 
	eol := '\'. 
	lineNo := 0. 
	^aStringList 
		inject: '' 
		into: 
			[:txt :line |  
			lineNo := lineNo + 1. 
			txt , (aBlock value: lineNo) , line , eol]