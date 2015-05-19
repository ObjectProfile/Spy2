as yet unclassified
textLinesFor: aString 
	 
	| CR LF | 
	CR := Character cr. 
	LF := Character lf. 
	^aString runsFailing: [:each | each = CR or: [each = LF]]