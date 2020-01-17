public
elementsToShow: key
	| shapes |
	current := self perform: key asLowercase asSymbol.
	shapes := current key.
	
	mainCanvas canvas shapes: shapes. 
	mainCanvas zoomToFit.
	