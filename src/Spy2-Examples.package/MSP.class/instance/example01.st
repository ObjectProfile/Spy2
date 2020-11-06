examples
example01

	"This example identifies the methods that produces the most instances of Roassal"
	<script: 'self new example01'>
	^ (MSP profile: [ | c |
			c := RSCanvas new.
			c @ RSCanvasController.
			c addAll: ((1 to: 100) collect: [ :i | 
				RSBox new size: i / 2; withBorder; borderColor: Color black; yourself]).
			
			RSRectanglePackLayout new on: c nodes.
			c open. ] onPackagesNamed: {'Roassal3' . 'Roassal3-Layouts'} ) inspect