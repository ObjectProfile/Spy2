visualization
visualizeGraph: canvas
	| methodsToRender shapes colorScale |
	
	methodsToRender := self producingMethods.
	methodsToRender := methodsToRender sortedAs: #selector.
	colorScale := NSScale category20c.
	shapes := methodsToRender collect: [ :m |
		| innerShapes |
		innerShapes := (m counting associations sortedAs: #value) reverse collect: [:assoc |
			| box |
			box := RSBox new
				model: assoc;
				withBorder;
				borderDo: [ :b | b joinRound ];
				popup;
				color: (colorScale scale: assoc key);
				extent: ((assoc value + 1) log @ ((m memoryOf: assoc key) + 1) log) * 8;
				yourself.
			self isReadyForComparison ifTrue: [ 
				(m doIInstantiate: assoc key) 
					ifFalse: [ box noBorder ].
				((m doIInstantiate: assoc key) 
					and: [ ((m previousMethod instancesOf: assoc key) < (m instancesOf: assoc key)) 
						or: [ m isNewMethod ] ])
							ifTrue: [ box borderColor: Color red ].
			] ifFalse: [ 
				box border width: 2.
				(m doIInstantiate: assoc key) 
					ifTrue: [ box borderColor: Color gray ]
					ifFalse: [ box noBorder ].
			].
			box
			].
		RSFlowLayout new gapSize: 2; on: innerShapes.
		(innerShapes asGroup asShapeFor: m) 
			padding: 5;
			withBorder;
			draggable;
			popup;
			when: RSMouseClick send: #inspect to: m;
			yourself
		 ].
	canvas addAll: shapes.
	RSEdgeBuilder line
		withBorderAttachPoint;
		shapes: shapes;
		connectFrom: #yourself toAll: [ :m | m calledMethods asArray sortedAs: #selector ].
	RSGraphVizLayout new
		"charge: -350;"
		on: shapes.