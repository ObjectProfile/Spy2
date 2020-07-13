as yet unclassified
buildView: v
	| onlyMBElements onlyMAElements comonMElements hOutgoing |
	onlyMBElements := onlyBeforeMethods collect: [ :m | RSEllipse new size: 10; color: Color blue darker darker translucent; model: m ] as: RSGroup.
	onlyMAElements := onlyAfterMethods collect: [ :m | RSEllipse new size: 10; color: Color yellow darker darker translucent; model: m ] as: RSGroup.
	
"	onlyMBElements := RSShapeBuilder circle color: Color blue darker darker trans; elementsOn: onlyBeforeMethods.
	onlyMAElements := RSShapeBuilder circle color: Color yellow darker darker trans; elementsOn: onlyAfterMethods.
"	RSNormalizer size
		to: 30;
		shapes: onlyMBElements, onlyMAElements;
		normalize: #numberOfExecutions.

	RSNormalizer size
		to: 30;
		shapes: onlyMBElements, onlyMAElements;
		normalize: #numberOfExecutions.

	comonMElements := commonMethods collect: [ :m | RSBox new color: Color green translucent; model: m ] as: RSGroup.

"	comonMElements := RSShapeBuilder box 
								color: Color green trans; elementsOn: commonMethods.
"	
	RSNormalizer width
		to: 30;
		shapes: comonMElements;
		normalize: [ :m | m beforeMethod numberOfExecutions ].

	RSNormalizer height
		to: 30;
		shapes: comonMElements;
		normalize: [ :m | m afterMethod numberOfExecutions ].

	
	v addAll: onlyMBElements; addAll: onlyMAElements; addAll: comonMElements.
	v shapes @ RSPopup @ RSDraggable.
	RSEdgeBuilder line
		canvas: v;
		color: Color blue translucent;
		moveBehind;
		withBorderAttachPoint;
		fromShapes: comonMElements;
		connectToAll: [ :m | m beforeMethod incomingCalls, m beforeMethod outgoingCalls ].

	RSEdgeBuilder line
		canvas: v;
		color: Color yellow translucent;
		moveBehind;
		withBorderAttachPoint;
		fromShapes: comonMElements;
		connectToAll: [ :m | m afterMethod incomingCalls, m afterMethod outgoingCalls ].

	RSEdgeBuilder line
		canvas: v;
		color: Color gray translucent;
		moveBehind;
		withBorderAttachPoint;
		shapes: comonMElements;
		connectToAll: [ :m | m connectedToAllIn: commonMethods ].

	RSTreeLayout on: v nodes.
	
	hOutgoing := RSHighlightable new withOutgoingEdges.
	hOutgoing highlightColor: Color red translucent.
	v nodes @ hOutgoing.