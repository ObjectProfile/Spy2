initialization
labeledInteraction
	| l label composite boxShape border colors horizontal vertical |
	l := RSLabeled new.
	border := TSBorder new width: 0.5.
	label := l shape text: [:el | el model className ].
	boxShape := RSShapeBuilder box
		color: Color black.
	l highlightable.
	colors := { Color red. Color green }.
	horizontal := RSHorizontalLineLayout new gapSize: 0.
	vertical := RSVerticalLineLayout new gapSize: 0; alignCenter.
	composite := RSShapeBuilder composite shapes: [ :el | 
		| g title box1 box2 size sc p color coverage boxes |
		g := TSGroup new: 3.
		title := label elementOn: el.
		box1 := boxShape elementOn: el.
		size := title width min: el width.
		sc := TSScale linear 
			domain: {0. 100}; 
			range: {0. size}.
		coverage := el model coverage.
		p := sc scale: coverage.
		sc range: colors.
		color := sc scale: coverage.
		g add: title; add: box1.
		box2 := boxShape elementOn: el.
		g add: box2.
		
		box1 
			border: border;
			color: color;
			extent: p @ 5.
		box2 extent: (size - p)@5.
		boxes := TSGroup with: box1 with: box2.
		horizontal on: boxes.
		vertical on: { title. boxes }.
		g ];
		padding: 0@5.
	l shape: composite.
	l target: [ :e | e shapes first ].
	^ l 