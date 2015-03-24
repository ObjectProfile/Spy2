examples
example04

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example04
	"
	^ (MSP profile: [ 
			| v |
			v := RTView new.
			v @ RTDraggableView.
			v addAll: ((RTBox new sizeElement: 20; borderColor: Color black) elementsOn: (1 to: 100)).
			RTRectanglePackLayout new on: v elements ] 
		
		onPackagesNamed: { 'Roassal2' . 'Trachel' } ) inspect