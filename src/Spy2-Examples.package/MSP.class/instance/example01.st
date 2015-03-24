examples
example01

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example01
	"
	^ (MSP profile: [ | v |
			v := RTView new.
			v @ RTDraggableView.
			v addAll: ((RTBox new size: [ :value | value / 2 ]; borderColor: Color black) elementsOn: (1 to: 100)).
			RTRectanglePackLayout new on: v elements.
			v open. ] onPackagesNamed: {'Roassal2' . 'Trachel'} ) inspect