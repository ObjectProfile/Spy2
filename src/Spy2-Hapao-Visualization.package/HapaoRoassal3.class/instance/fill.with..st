layout
fill: group with: e
	group add: e.
	e outgoingEdges do: [ :ed | 
		self fill: group with: ed to ].