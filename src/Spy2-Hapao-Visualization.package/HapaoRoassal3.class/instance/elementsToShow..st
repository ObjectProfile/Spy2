public
elementsToShow: key
	| shapes |
	current := self perform: key asLowercase asSymbol.
	shapes := current key.
	
	mainView canvas shapes: shapes. 
	lightInteraction shapes: mainView shapes.
	mainView zoomToFit.
	