as yet unclassified
buildView: v
	| onlyMBElements onlyMAElements comonMElements hOutgoing |
	onlyMBElements := RSShapeBuilder circle color: Color blue darker darker trans; elementsOn: onlyBeforeMethods.
	onlyMAElements := RSShapeBuilder circle color: Color yellow darker darker trans; elementsOn: onlyAfterMethods.
	RSNormalizer size
		to: 30;
		elements: onlyMBElements, onlyMAElements;
		normalize: #numberOfExecutions.

	RSNormalizer size
		to: 30;
		elements: onlyMBElements, onlyMAElements;
		normalize: #numberOfExecutions.

	comonMElements := RSShapeBuilder box 
								color: Color green trans; elementsOn: commonMethods.
	
	RSNormalizer width
		to: 30;
		elements: comonMElements;
		normalize: [ :m | m beforeMethod numberOfExecutions ].

	RSNormalizer height
		to: 30;
		elements: comonMElements;
		normalize: [ :m | m afterMethod numberOfExecutions ].

	
	v addAll: onlyMBElements; addAll: onlyMAElements; addAll: comonMElements.
	v elements @ RSPopup @ RSDraggable.
	RSEdgeBuilder line
		view: v;
		color: Color blue trans;
		moveBehind;
		withBorderAttachPoint;
		fromElements: comonMElements;
		connectToAll: [ :m | m beforeMethod incomingCalls, m beforeMethod outgoingCalls ].

	RSEdgeBuilder line
		view: v;
		color: Color yellow trans;
		moveBehind;
		withBorderAttachPoint;
		fromElements: comonMElements;
		connectToAll: [ :m | m afterMethod incomingCalls, m afterMethod outgoingCalls ].

	RSEdgeBuilder line
		view: v;
		color: Color gray trans;
		moveBehind;
		withBorderAttachPoint;
		elements: comonMElements;
		connectToAll: [ :m | m connectedToAllIn: commonMethods ].

	RSTreeLayout on: v elements.
	
	hOutgoing := RSHighlightable new withOutgoingEdges.
	hOutgoing highlightShape color: Color red trans.
	v elements @ hOutgoing.