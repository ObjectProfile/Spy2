visualization-list
visualizeAsMatrix

	| v shapeMatch shapeNonMatch c |
	v := RTView new.
	v @ RTDraggableView.
	shapeMatch := RTBox new size: 8; color: Color green.
	shapeNonMatch := RTBox new size: 8; color: Color gray.
	profiler allTestMethods do: [ :testMethod |
		profiler allNonTestMethods do: [ :method |
			c := (method testedMethods anySatisfy: [ :cm | cm methodClass == testMethod theClass and: [ cm selector == testMethod selector ] ]) 
						ifTrue: [ shapeMatch ] ifFalse: [ shapeNonMatch ].
			v add: (c elementOn: (testMethod -> method)).
		] ].
	RTGridLayout new lineItemsCount: profiler allNonTestMethods size; gapSize: 1; on: v elements.
	
	v elements @ RTPopup.
	
	v @ RTDoubleScrollBar.
	^ v inspect