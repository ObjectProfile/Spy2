layout
createShapesFor: classes
	| canvas shapes connectedClasses layout singleClasses |
	shapes := classes collect: [:cls | self createClassShapeFor: cls ].
	canvas := RSCanvas new.
	canvas addAll: shapes.
	self edgeBuilder
		canvas: canvas;
		shapes: shapes;
		connectFrom: [ :e | classes 
			detect: [ :cls | cls theClass = e theClass superclass ] 
			ifNone: [ nil ] ].
	canvas shapes do:[:s | s parent: mainCanvas canvas].
	
	connectedClasses := shapes select: #hasEdges.
	singleClasses := shapes reject: #hasEdges.
	layout := RSTreeLayout new 
		verticalGap: 60;
		horizontalGap: 10;
		on: connectedClasses.
	
	shapes := (layout rootNodesFor: connectedClasses) collect: [ :e | 
		| group |
		group :=  RSGroup new.
		self fill: group with: e.
		group ]. 
	shapes addAll: singleClasses.
	^ canvas shapes->shapes