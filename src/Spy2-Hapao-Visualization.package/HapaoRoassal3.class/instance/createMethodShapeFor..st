layout
createMethodShapeFor: met
	^ self basicMethodShape copy
		model: met;
		announcer: self basicMethodShape announcer;
		border: (RSBorder new
			color: (self borderColorForMethod: met);
			yourself);
		extent: met visualExtent;
		color: 
			(met isTest 
				ifTrue: [ met colorForTestResult ]
				ifFalse: [ (colorScale scale: met calls) ]);
		yourself