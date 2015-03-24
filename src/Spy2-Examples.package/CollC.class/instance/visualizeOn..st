visualization
visualizeOn: view
	| shape |
	shape := RTLabel new text: [ :aRule | aRule method methodClass name, '>>', aRule method selector, '  => ', aRule numberOfEvaluations asString ].

	view addAll: (shape elementsOn: self contract rules).
	
	RTVerticalLineLayout on: view elements.