examples
example03
	"This example identifies the methods that produces the most instances of Roassal"
	<script: 'self new example03'>
	^ (MSP profile: [ 
			| c |
			c := RSCanvas new.
			c @ RSCanvasController.
			c addAll: ((1 to: 10) collect: [ :i | 
				RSBox new size: i; borderColor: Color black; yourself]).
			
			RSForceBasedLayout on: c nodes.
			c open. 
		 ] onPackagesNamed: #('Roassal3' 'Roassal3-Layouts') ) inspect