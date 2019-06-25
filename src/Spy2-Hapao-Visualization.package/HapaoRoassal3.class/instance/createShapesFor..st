layout
createShapesFor: classes
	| view elements connectedClasses layout singleClasses |
	elements := shape elementsOn: classes.
	view := RSView new.
	view addAll: elements.
	self edgeBuilder
		view: view;
		elements: elements;
		connectFrom: [ :e | classes 
			detect: [ :cls | cls theClass = e theClass superclass] 
			ifNone: [ nil ] ].
	view addAll: elements.
	view shapes do:[:s | s parent: mainView canvas].
	
	connectedClasses := elements select: #hasEdges.
	singleClasses := elements reject: #hasEdges.
	layout := RSTreeLayout new 
		verticalGap: 60;
		horizontalGap: 10;
		on: connectedClasses.
	
	elements := (layout rootNodesFor: connectedClasses) collect: [ :e | 
		| group |
		group :=  TSGroup new.
		self fill: group with: e.
		group ]. 
	elements addAll: singleClasses.
	^ view shapes->elements