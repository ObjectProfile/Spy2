initialization
edgeBuilder
	| border |
	edgeBuilder ifNotNil: [ ^ edgeBuilder ].
	border := TSBorder new.
	^ edgeBuilder := RSEdgeBuilder polyline
		onElement;
		controlPoints: [ :ed | [ :from :to | | mid m1 m2 m3 m4 vd d | 
			d := 30.
			mid := (from + to)/2.
			vd := 0@ d.
			m1 := from + vd.
			m2 := to x @ m1 y.
			m4 := to - vd.
			m4 y > m2 y ifTrue: [ 
				Array with: from with: m1 with: m2 with: to.
			] ifFalse: [
				m2 := mid x @ m2 y.
				m3 := mid x @ m4 y.
				Array
					with: from
					with: m1
					with: m2
					with: m3
					with: m4
					with: to
					
			].
			 ] ];
		onModel;
		border: border;
		withVerticalAttachPoint;
		markerStart: ((RSShapeBuilder triangle size: 10; 
			color: Color white;
			border: border;
			element) trachelShape asMarker offset: 5)