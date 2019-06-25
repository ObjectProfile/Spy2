initialization
highlightInteraction
	| int |
	int := RSHighlightable new.
	int noDefaultColor withEdges.
	int highlightShape
		onElement;
		border: [ :e | TSBorder new width: 2; color: e border color ].
	int when: TSHighlightEvent do: [ :evt | 
		| e array anime |
		e := evt element.
		array := #(4).
		e connectedEdges do: [ :ed| ed border 
			color: Color blue; 
			width: 2;
			dashArray: array. ].
		anime := mainView animation 
			repeat;
			from: 0;
			to: -8;
			duration: 1 second;
			onStepDo: [ :t |
				e connectedEdges do: [ :ed |ed border dashOffset: t ].
				mainView signalUpdate. ].
		e attributes at: #anime put: anime.
	].
	int when: TSUnHighlightEvent do: [ :evt | 
		| e |
		e := evt element.
		(e attributes at: #anime) stop.
		e attributes removeKey: #anime.
	].
	^ int.
	
