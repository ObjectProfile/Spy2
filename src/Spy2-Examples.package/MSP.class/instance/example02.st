examples
example02

	"This example identifies the methods that produces the most instances of Roassal"
	<script: 'self new example02'>
	^ (MSP profile: [ 
			| v |
			v := RSCanvas new.
			v @ RSCanvasController.
			v addAll: ((1 to: 100) collect: [ :i | RSBox new size: 20; borderColor: Color black ] ).
			RSRectanglePackLayout new on: v shapes ] 
		
		onPackagesNamed: { 'Roassal3' . 'Roassal3-Shapes' } ) inspect