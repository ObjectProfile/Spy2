visualization
setMenuOn: view

"	view addMenu: 'most created' callback: [ self showListMostCreatedObjects ].
	view addMenu: 'clusters' callback: [ self showClusters ].
"
	view addMenu: 'inspect' callback: [ self inspect ].
	view addMenu: 'set for comparison' callback: [ self setForComparison ].

	view setDefaultMenu