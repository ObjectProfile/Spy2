*Spy2-Visualization-Buttons
findButton: view
	|element|
	view addMenu: 'Find' callback: [  
		element := UIManager default chooseFrom: (view elements collect: #model) values: view elements.
		element notNil
			ifTrue: [ view canvas camera translateTo: element position. RTBlink on: element ] ].