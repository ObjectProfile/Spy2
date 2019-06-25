initialization
initializeMethodShape
	| theme |
	theme := Smalltalk ui theme.
	methodShape := RSShapeBuilder box
		border: (TSBorder new color: Color red);
		color: [:m | colorScale scale: m calls ];
		onElement;
		when: TSMouseClick do: [ :e| [ :evt | e model compiledMethod browse. ] ];
		onModel;
		addInteraction: self highlightInteraction;
		popup;
		if: #hasBeenExecuted then: [:s | s border: (TSBorder new color: theme textColor) ];
		if: #abstractMethod then: [:s | s border: (TSBorder new color: Color blue) ];
		if: #isTest then: [:s | s border: (TSBorder new color: Color green) ];
		extent: [ :m | (m callersForWidth @ m lineCountForHeight) + 5 ].