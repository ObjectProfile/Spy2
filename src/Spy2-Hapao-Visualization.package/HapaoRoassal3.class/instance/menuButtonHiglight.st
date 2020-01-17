visualization
menuButtonHiglight

	| high |
	high := RSHighlightable new.
	high highlightShapes: [ :b | {b shapes first} ].
	high highlightColor: Color black.
	^ high 