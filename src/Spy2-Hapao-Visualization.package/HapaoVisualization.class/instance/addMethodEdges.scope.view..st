visualization
addMethodEdges: each scope: mths view: view
	| edges sb |
	sb := RTEdgeBuilder new
			view: view;
			moveBehind.
	sb shape shape: (RTLine new attachPoint: RTVerticalAttachPoint instance).

	sb objects: each allMethods.
	edges := sb
					connectFrom: #yourself 
					toAll: #selfCallers.

	"edges do: #pushBack."
	^ edges