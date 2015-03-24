visualization
visualizeOn: aView

	| executedMethods b |
	executedMethods := self allMethods select: #hasBeenExecuted.
	b := RTMondrian new.
	b view: aView.
	
	b nodes: executedMethods.
	
	b shape line color: (Color gray alpha: 0.2).
	b edges
		moveBehind;
		connectToAll: #outgoingCalls.

	b layout force.

	b normalizer
		normalizeSize: [ :m | m numberOfOutgoingCalls + m numberOfIncomingCalls ] min: 5 max: 30;
		normalizeColor: [ :m | m numberOfOutgoingCalls / (m numberOfIncomingCalls + m numberOfOutgoingCalls + 1) ] using: { Color blue . Color red };
	   alphaColor: 0.7.
	b build.
	^ b