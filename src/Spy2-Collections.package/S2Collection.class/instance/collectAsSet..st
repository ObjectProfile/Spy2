as yet unclassified
collectAsSet: aBlock
	"Evaluates aBlock for each element of the receiver and collects
	the resulting values into a Set."

	"This is an efficient shorthand for [ (self collect: aBlock) asSet ]."
	"originally developed by a. kuhn and released under MIT."
	
	^self inject: S2Set new into: [ :set :each | 
		set add: (aBlock value: each); yourself ].