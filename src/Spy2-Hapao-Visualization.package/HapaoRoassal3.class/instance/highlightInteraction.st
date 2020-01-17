initialization
highlightInteraction
	^ methodHiglightInteraction ifNil: [ 
		methodHiglightInteraction :=  RSHighlightable new setupAntAnimation ]