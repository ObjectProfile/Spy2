visualization
visualizeLegend
	| b line box simpleGraph |
	b := RSLegendBuilder new.
	b 
		onDemand: 'Hapao';
		view: mainView.
	b shape
		border: TSBorder new;
		color: (Color white alpha: 0.8).
	b text: 'Hapao' description: 'shows the test coverage'.
	profiler unitTestResult ifNotNil: 
		[
			b text: profiler coverage printString,'%' description: 'of coverage (excluding tests)'.
			b text: profiler runCount printString description: 'tests run'.
			b defaultBox border: TSBorder new.
			b text: profiler unitTestResult expectedPassCount asString withBoxColor: Color lightGreen.
			b text: profiler unitTestResult failures size asString withBoxColor: Color lightYellow .
			b text: profiler unitTestResult errors size asString withBoxColor: Color lightRed ].
	b text: 'Big box = classes. Green classes are unit tests'.
	b text: 'Inner box = method'.
	b text: 'height = number of lines of code of '.
	b text: 'width = number of methods that call it'.
	b text: 'edge = static call between methods. Above calls below'.
	b text: 'Method well tested' withBoxColor: Color black .
	b text: 'Method tested' withBoxColor: Color gray .
	b text: 'Method not tested' withBoxColor: Color red.
	line := RSSingleEdgeBuilder line 
		from: 0@0; to: 30@0; 
		width: 2; color: Color blue;
		onMyselfDo: [ [ :e |
			| anime |
			e border dashArray: #(4).
			anime := mainView attributes 
				at: #legendAnime
				ifAbsentPut: [ mainView animation repeat; 
					duration: 1 second; from: 0; to: -8; yourself ].
			anime onStepDo: [:t | 
				e border dashOffset: t. 
				mainView signalUpdate ].
			] ].
	box := RSShapeBuilder composite shapes: [ :m | | g rec | 
		g := TSGroup new.
		rec := b defaultBox element.
		rec noPaint; size: 20.
		g add: rec.
		g add: (b defLabel elementOn: m).
		g 
		].
	simpleGraph := RSShapeBuilder composite shapes: [ | g |
		g := TSGroup new.
		g add: (box elementOn: 'A').
		g add: line element.
		g add: (box elementOn: 'B').
		RSHorizontalLineLayout new gapSize: 0; alignCenter; on: g.
		g  ].
	b custom: 'A depends on B' shape: (b 
		horizontalComposite: simpleGraph
		text: b defLabel).
	b build