layout
applyLayout: classes
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
	view shapes do:[:s | s parent: mainView canvas].
	
	connectedClasses := elements select: #hasEdges.
	singleClasses := elements reject: #hasEdges.
	layout := RSTreeLayout new 
		verticalGap: 60;
		horizontalGap: 10;
		on: connectedClasses.
	
	elements removeAll.
	(layout rootNodesFor: connectedClasses) do: [ :e | | group |
		group :=  TSGroup new.
		elements add: group.
		self fill: group with: e. ]. 
	elements addAll: singleClasses.
	RSRectanglePackLayout new 
		gap: 0.5;
		on: elements.
	^ view shapes