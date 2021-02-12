initialization
highlightInteraction
	^ methodHiglightInteraction ifNil: [ 
		methodHiglightInteraction :=  RSHighlightable withAntAnimation ]