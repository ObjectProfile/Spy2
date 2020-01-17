accessing
edgeBuilder
	^ edgeBuilder ifNil: [ 
		| cpController |
		cpController := RSBlockCPController new
		block: [ :line | 
			| mid m1 m2 m3 m4 vd d from to |
			from := line attachPoint startingPointOf: line.
			to := line attachPoint endingPointOf: line. 
			d := 30.
			mid := (from + to)/2.
			vd := 0@ d.
			m1 := from + vd.
			m2 := to x @ m1 y.
			m4 := to - vd.
			m4 y > m2 y 
				ifTrue: [ Array with: from with: m1 with: m2 with: to] 
				ifFalse: [
					m2 := mid x @ m2 y.
					m3 := mid x @ m4 y.
					Array with: from with: m1 with: m2 with: m3 with: m4 with: to
			].
		].
		edgeBuilder := RSEdgeBuilder polyline
			controlPointsController: cpController;
			border: self mainBorder;
			withVerticalAttachPoint;
			markerStart: ((RSShapeFactory triangle size: 10; 
				color: Smalltalk ui theme backgroundColor;
				border: self mainBorder) asMarker offset: 5)
	]