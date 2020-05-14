visualization
visualizeLegend
	| b box line g anime |
	b := RSLegend new.
	b 
		onDemand: 'Hapao';
		container: mainCanvas.
	b leyendDo: [ :lbl | lbl withBorder; color: (Color white alpha: 0.8); padding: 10 ].
	b text: 'Hapao' description: 'shows the test coverage'.
	profiler unitTestResult ifNotNil: [
		b text: profiler coverage printString,'%' description: 'of coverage (excluding tests)'.
		b text: profiler runCount printString description: 'tests run'.
		b defaultBox border: RSBorder new.
		b text: profiler unitTestResult expectedPassCount asString withBoxColor: Color lightGreen.
		b text: profiler unitTestResult failures size asString withBoxColor: Color lightYellow .
		b text: profiler unitTestResult errors size asString withBoxColor: Color lightRed ].
	b text: 'Big box = classes. Green classes are unit tests'.
	b text: 'Inner box = method'.
	b text: 'height = number of lines of code of '.
	b text: 'width = number of methods that call it'.
	b text: 'edge = static call between methods. Above calls below'.
	b text: 'Method well tested' withBoxColor: Smalltalk ui theme textColor.
	b text: 'Method tested' withBoxColor: Color gray .
	b text: 'Method not tested' withBoxColor: Color red.

	line := RSLine new 
		startPoint: 0@0; 
		endPoint: 30@0;
		width: 2;
		color: Color blue;
		dashArray: #(4);
		yourself.
	anime := mainCanvas 
		propertyAt:#legendAnime
		ifAbsentPut: [ mainCanvas newAnimation repeat; 
			duration: 1 second; from: 0; to: -8; yourself ].
	anime onStepDo: [ :t | 
		line border dashOffset: t. 
		mainCanvas signalUpdate ].
	
	box :=  [ :m | 
		RSComposite new
			shapes:
				{RSBox new noPaint; withBorder; size: 20. 
				RSLabel new text: m };
			yourself ].
	g := { box value: 'A'. line. box value: 'B' } asGroup.
	RSHorizontalLineLayout new gapSize: 0; alignCenter; on: g.
	b	
		text: 'A depends on B' 
		withShape: (RSComposite new
			shapes: g;
			yourself).
	b build.
	


