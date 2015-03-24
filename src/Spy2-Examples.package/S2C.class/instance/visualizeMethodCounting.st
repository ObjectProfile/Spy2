visualization
visualizeMethodCounting
	| b |
	b := RTGraphBuilder new.
	b nodes 
			color: Color gray;
			whenClicked: #inspect.
	b layout use: (RTFlowLayout new maxWidth: 500).
	b global normalizeSize: #count min: 5 max: 50 using: #sqrt.
	b global normalizeColor: #count using: { Color gray . Color red }. 
	b addAll: (self allMethods select: [ :m | m count > 0 ]  ).
	b open