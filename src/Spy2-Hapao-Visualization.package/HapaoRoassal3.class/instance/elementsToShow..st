public
elementsToShow: key
	| shapes |
	
	shapes := (key = 'Classes'
		ifTrue: [ classesShape ]
		ifFalse: [ testsShape ]).
	mainView canvas shapes: shapes. 
	lightInteraction shapes: mainView shapes.
	mainView zoomToFit.
	mainView signalUpdate.