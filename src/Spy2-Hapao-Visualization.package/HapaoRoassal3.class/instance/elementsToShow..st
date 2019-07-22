public
elementsToShow: key
	| shapes |
	current := self perform: key asLowercase asSymbol.
	shapes := current key.
	
	mainView canvas shapes: shapes. 
	mainView zoomToFit.
	