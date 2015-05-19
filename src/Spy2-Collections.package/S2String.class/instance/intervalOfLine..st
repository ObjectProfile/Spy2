as yet unclassified
intervalOfLine: aLineNumber

	"Answer an interval spanning between the first and the last character of the line from aLineNumber"
	
	| lineIndex |
	lineIndex := 0.
	self lineIndicesDo: [ :start :endWithoutDelimiters :end |
		lineIndex := lineIndex + 1.
		lineIndex = aLineNumber ifTrue: [ ^ start to: end ] ].
	^ 0 to: 0