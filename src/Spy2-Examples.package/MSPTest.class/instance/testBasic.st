tests
testBasic
	(MSP profile: [ | c |
		c := RSCanvas new.
		c @ RSCanvasController.
		c addAll: ((1 to: 100) collect: [ :i | 
			RSBox new size: i / 2; withBorder; borderColor: Color black; yourself]).
			
		RSRectanglePackLayout new on: c nodes.
	] onPackagesNamed: {'Roassal3' . 'Roassal3-Layouts'} ) visualizeOn: RSCanvas new.