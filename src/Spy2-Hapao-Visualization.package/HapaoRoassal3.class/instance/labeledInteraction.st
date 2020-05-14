initialization
labeledInteraction
	| colors  vertical theme sc corner1 corner2 corner3 |
	labeledInteraction ifNotNil: [ ^ labeledInteraction ].
	theme := Smalltalk ui theme.
	labeledInteraction := RSLabeled new.
	labeledInteraction highlightable.
	labeledInteraction model: #yourself.
	
	colors := { Color red. Color orange. Color green }.
	sc := NSScale linear domain: {0. 50. 100}.
	vertical := RSVerticalLineLayout new gapSize: 0; alignCenter.
	corner1 := RSCornerRadius new radius: 2.5.
	corner2 := RSCornerRadius new left: 2.
	corner3 := RSCornerRadius new radius: 2.
	labeledInteraction shapeBuilder: [:s | 
		| title box1 box2 size coverage p color g |
		g := RSGroup new: 3.
		title := RSLabel new
			color: theme textColor;
			text: s model className.
		size := title width min: s width.
		coverage := s model coverage.
		sc range: { 2. size/2. size }.
		p := sc scale: coverage.
		sc range: colors.
		color := sc scale: coverage.
		box1 := RSBox new
			paint: theme backgroundColor;
			border: self mainBorder;
			cornerRadius: corner1;
			extent: size @ 5.
		
		box2 := RSBox new 
			paint: color;
			cornerRadius: (p > (size - 2)
				ifTrue: [ corner3 ]
				ifFalse: [ corner2 ]) ;
			extent: p @ 4.
		g add: title; add: box1.
		g add: box2.
		vertical on: g.
		RSLocation new left; move: box2 on: box1.
		g add: box2.
		
		RSComposite new
			shapes: g;
			padding: 0@5;
			yourself
		].
	
	labeledInteraction lowColor: (theme textColor alpha: 0.3).
	labeledInteraction target: [ :e | e shapes first ].
	^ labeledInteraction 