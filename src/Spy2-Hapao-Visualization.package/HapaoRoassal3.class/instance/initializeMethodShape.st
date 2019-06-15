initialization
initializeMethodShape
	
	methodShape := RSShapeBuilder box
		border: (TSBorder new color: Color red);
		color: [:m | colorScale scale: m calls ];
		onElement;
		when: TSMouseClick do: [ :e| [ :evt | e model compiledMethod browse. ] ];
		onModel;
		addInteraction: self highlightInteraction;
		popup;
		if: #hasBeenExecuted actions: [:s | s border: (TSBorder new color: Color black) ];
		if: #abstractMethod actions: [:s | s border: (TSBorder new color: Color blue) ];
		if: #isTest actions: [:s | s border: (TSBorder new color: Color green) ];
		extent: [ :m | (m callersForWidth @ m lineCountForHeight) + 5 ].