ui
paintOn: b
	"b is a mondrian builder"
	b nodes: (self flatCollect: #allCalledMethods) asSet asArray.
	b edges
		connectToAll: #callingMethods.
	b layout tree.