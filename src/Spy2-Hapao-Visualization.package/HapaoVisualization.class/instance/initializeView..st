visualization
initializeView: builder
	builder view @ RTFindInAView @ RTZoomableView.
	profiler refreshViewButtonOn: builder view.
	builder canvas addMenu: 'get list' callback: [ self visualizeAsList ].
	builder canvas addMenu: 'Matrix' callback: [ self visualizeAsMatrix ].
	builder canvas addMenu: 'Hapao again' callback: [ self hapaoRunAgain ].