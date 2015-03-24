visualize - buttons
setMenuOn: view

	view addMenu: 'most created' callback: [ self showListMostCreatedObjects ].
	view addMenu: 'clusters' callback: [ self showClusters ].
	view addMenu: 'inspect' callback: [ self inspect ].
	view addMenu: 'set for comparison' callback: [ self setForComparison ].
	view addMenu: 'set view' callback: [ Smalltalk at: #TMPView put: view ].
	view addMenu: 'use set view' callback: [ self useLayoutFromView: (Smalltalk at: #TMPView) toView: view ].
	view setDefaultMenu