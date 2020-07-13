visualization
visualize

	| executedMethods v nodes eb con |
	executedMethods := self allMethods select: #hasBeenExecuted.
	v := RSCanvas new.
	nodes := executedMethods collect: [ :m | RSEllipse new size: 20; model: m ] as: RSGroup.
	nodes @ RSPopup @ RSDraggable.
	v addAll: nodes.
	
	eb := RSEdgeBuilder arrowedLineWithOffset: 0.2.
	eb withBorderAttachPoint.
	eb color: (Color gray alpha: 0.2).
	eb canvas: v.
	eb moveBehind.
	eb connectToAll: #outgoingCalls.
	
	nodes @ (RSHighlightable new withEdges highlightColor: Color red).
	RSNormalizer size 
		shapes: nodes;
		from: 5; to: 30;
		normalize: #numberOfExecutions.
		"normalize: [ :m | m numberOfOutgoingCalls + m numberOfIncomingCalls ]".

	RSNormalizer color 
		shapes: nodes;
		from: Color blue translucent; to: Color red translucent;
		normalize: [ :m | m numberOfOutgoingCalls / (m numberOfIncomingCalls + m numberOfOutgoingCalls + 1) ].
	
	RSForceBasedLayout new charge: -300; on: nodes.
	
	con := RSCanvasController new.
	con addInteraction: RSSearchInCanvas new.
	v @ con.
	^ v
