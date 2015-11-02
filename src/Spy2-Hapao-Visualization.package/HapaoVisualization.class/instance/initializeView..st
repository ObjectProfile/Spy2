visualization
initializeView: builder
	builder view @ RTFindInAView.
	"self findButton: builder view."
"	profiler zoomInButton: builder view.
	profiler zoomOutButton: builder view.
	profiler exportSVGButton: builder view.
	profiler exportHTMLButton: builder view.
"

	profiler refreshViewButtonOn: builder view.
	builder canvas addMenu: 'get list' callback: [ self visualizeAsList ].
	builder canvas addMenu: 'Matrix' callback: [ self visualizeAsMatrix ].