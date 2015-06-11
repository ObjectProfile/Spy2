visualization
addMethodEdges: each scope: mths view: view
	| edges sb |
	sb := RTEdgeBuilder new
			view: view.
	sb shape shape: (RTLine new attachPoint: RTVerticalAttachPoint instance).

	edges := sb
					objects: each allMethods
					from: #yourself 
					toAll: #selfCallers.

	"edges do: #pushBack."
	^ edges