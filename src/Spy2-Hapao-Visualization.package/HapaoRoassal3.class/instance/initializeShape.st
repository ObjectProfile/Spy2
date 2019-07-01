initialization
initializeShape
	| labeled |
	labeled := self labeledInteraction.
	self initializeMethodShape.
	shape := RSShapeBuilder composite shapes: [ :cls |
		| methods edges connectedMethods singleMethods|
		methods := methodShape elementsOn: cls allMethods.
		methods do: [ :m | m view: mainView ].
		edges := TSGroup new.
		RSEdgeBuilder line
			border: self mainBorder;
			withVerticalAttachPoint;
			view: edges;
			elements: methods;
			connectFrom: #yourself toAll: #selfCallers.
		connectedMethods := methods select: #hasEdges.
		RSSugiyamaLayout on: connectedMethods edges: edges.
		singleMethods := (methods reject: #hasEdges) sorted: [:a :b |
			a model numberOfLinesOfCode< b model numberOfLinesOfCode ].
		
		RSFlowLayout on: singleMethods.
		RSHorizontalLineLayout on: { connectedMethods. singleMethods }.
		edges, methods ];
		padding: 10;
		border: self mainBorder;
		interactionDo: #popupAndDraggable;
		addInteraction: labeled.