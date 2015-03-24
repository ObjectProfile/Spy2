visualization
visualizeOn: view
	"This is a generated visualization"
	| b |
	self setMenuOn: view.
	
	b := RTMondrian new.
	b view: view.
	
	self isReadyForComparison ifFalse:
	[	b shape rectangle size: [ :m | m numberOfExecutions sqrt ].
		b nodes: self allExecutedMethods.
		b edgesToAll: #callingMethods.
		b treeLayout.
		b build.
		^ self ].
	
	"We are doing a difference"
	b shape rectangle 
		size: [ :m | m numberOfExecutions sqrt ];
		if: [:m | m hasPreviousVersion and: [ m previousMethod hasBeenExecuted and: [ m hasBeenExecuted ] ] ] fillColor: Color gray;
		
		if: [:m | m hasPreviousVersion and: [ m previousMethod hasBeenExecuted and: [ m hasBeenExecuted not ] ] ] fillColor: Color red;
		
		if: [:m | m hasPreviousVersion and: [ m previousMethod hasBeenExecuted not and: [ m hasBeenExecuted ] ] ] fillColor: Color blue.
	b nodes: (self allMethods select: [ :m | m hasBeenExecuted or: [ m previousMethod hasBeenExecuted ] ] ).
	b shape line color: (Color blue alpha: 0.5).
	b edgesToAll: #callingMethods.
	b treeLayout.
	b build 	