ui
paintOn: b
	"b is a mondrian builder"
	| methodsToBeVisualized |
	methodsToBeVisualized := self, (self flatCollect: #allOutgoingCalls) asSet asArray.
	b shape 
		box if: #isTest fillColor: Color green.
	b nodes: methodsToBeVisualized.
	
	b shape line color: Color veryLightGray trans.
	b edges
		moveBehind;
		connectToAll: #outgoingCalls.
		
	b normalizer
		normalizeSize: #numberOfLinesOfCode;
		normalizeColor: [ :m | (m tests intersection: self) size ] using: { Color blue. Color red }.
	b layout tree.