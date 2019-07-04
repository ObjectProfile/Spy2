initialization
labeledInteraction
	| l label composite colors  vertical theme sc corner1 corner2 corner3 |
	theme := Smalltalk ui theme.
	l := RSLabeled new.
	label := l shape 
		color: theme textColor;
		text: [:e | e model className ].
	l highlightable.
	l model: #yourself.
	
	colors := { Color red. Color orange. Color green }.
	sc := TSScale linear domain: {0. 50. 100}.
	vertical := RSVerticalLineLayout new gapSize: 0; alignCenter.
	corner1 := TSCornerRadius new radius: 2.5.
	corner2 := TSCornerRadius new left: 2.
	corner3 := TSCornerRadius new radius: 2.
	
	composite := RSShapeBuilder composite shapes: [ :el | 
		| g title box1 box2 size p color coverage |
		g := TSGroup new: 3.
		title := label elementOn: el.
		
		size := title width min: el width.
		coverage := el model coverage.
		sc range: { 2. size/2. size }.
		p := sc scale: coverage.
		sc range: colors.
		color := sc scale: coverage.
		
		box1 := TSBox new
			paint: theme backgroundColor;
			border: self mainBorder;
			cornerRadius: corner1;
			extent: size @ 5.
		box2 := TSBox new 
			paint: color;
			cornerRadius: (p > (size -2 )
				ifTrue: [ corner3  ]
				ifFalse: [ corner2 ]) ;
			extent: p @ 4.
		g add: title; add: box1.
		vertical on: g.
		RSLocate new left; move: box2 on: box1.
		g add: box2.
		g ];
		padding: 0@5.
		
	l shape: composite.
	l lowColor: (theme textColor alpha: 0.3).
	l target: [ :e | e shapes first ].
	^ l 