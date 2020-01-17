layout
createClassShapeFor: cls
	| methods edges connectedMethods singleMethods |
	methods := cls allMethods 
		collect: [ :met | self createMethodShapeFor: met]
		as: RSGroup.
	edges := RSGroup new.
	RSEdgeBuilder line
		border: self mainBorder;
		withVerticalAttachPoint;
		canvas: edges;
		shapes: methods; 
		connectFrom: #yourself toAll: #selfCallers.
	connectedMethods := methods select: #hasEdges.
	RSSugiyamaLayout on: connectedMethods edges: edges.
	singleMethods := (methods reject: #hasEdges) sorted: [:a :b |
	a model numberOfLinesOfCode< b model numberOfLinesOfCode ].
	RSFlowLayout on: singleMethods.
	RSHorizontalLineLayout on: { connectedMethods. singleMethods }.
	^ RSComposite new
		draggable;
		popup;
		addInteraction: self labeledInteraction;
		model: cls;
		shapes: edges, methods;
		padding: 10;
		border: self mainBorder;
		yourself