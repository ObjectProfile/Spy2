visualization
visualize

	| executedMethods v nodes eb sb |
	executedMethods := self allMethods select: #hasBeenExecuted.
	v := RSView new.
	sb := RSShapeBuilder circle.
	sb addInteraction: RSHighlightable new withEdges.
	nodes := sb elementsOn: executedMethods.
	nodes @ RSPopup @ RSDraggable.
	v addAll: nodes.
	
	eb := RSEdgeBuilder line.
	eb color: (Color gray alpha: 0.2).
	eb view: v.
	eb moveBehind.
	eb connectToAll: #outgoingCalls.
	
	RSNormalizer size 
		elements: nodes;
		from: 5; to: 30;
		normalize: #numberOfExecutions.
		"normalize: [ :m | m numberOfOutgoingCalls + m numberOfIncomingCalls ]".

	RSNormalizer color 
		elements: nodes;
		from: Color blue trans; to: Color red trans;
		normalize: [ :m | m numberOfOutgoingCalls / (m numberOfIncomingCalls + m numberOfOutgoingCalls + 1) ].
	
	RSForceBasedLayout on: nodes.
	v @ RSControlsView.
	v open
