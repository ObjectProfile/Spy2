as yet unclassified
intervalFromStartLine: aStartLine startColumn: aStartColumn toEndLine: anEndLine endColumn: anEndColumn

	" Returns an interval spanning between startLine @ startColumn to endLine @ endColumn"
	
	| lineIndex intervalStart intervalEnd |
	lineIndex := 0.
	intervalStart := 1.
	intervalEnd := 0.
	self lineIndicesDo: [ :start :endWithoutDelimiters :end |
		lineIndex := lineIndex + 1.
		lineIndex = aStartLine ifTrue: [ intervalStart := start + aStartColumn - 1 ].
		lineIndex = anEndLine ifTrue: [ intervalEnd := start + anEndColumn - 1] ].
	^ intervalStart to: intervalEnd