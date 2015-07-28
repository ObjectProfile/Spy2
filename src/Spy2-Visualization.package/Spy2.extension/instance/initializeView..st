*Spy2-Visualization-Visualization
initializeView: builder
	builder view @ RTFindInAView.
	"self findButton: builder view."
	self zoomInButton: builder view.
	self zoomOutButton: builder view.
	self exportSVGButton: builder view.
	self exportHTMLButton: builder view.

	self refreshViewButtonOn: builder view.