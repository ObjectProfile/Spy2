examples
example04WithRedundantObjects

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example04WithRedundantObjects
	"
	^ (MSP profile: [ 
			| v |
			v := RTView new.
			v @ RTDraggableView.
			1 to: 100 do: [ :i |
				v add: ((RTBox new sizeElement: 20; borderColorElement: Color black) elementOn: i) ].
			RTRectanglePackLayout new on: v elements ] 
		
		onPackagesNamed: { 'Roassal2' . 'Trachel' } ) inspect