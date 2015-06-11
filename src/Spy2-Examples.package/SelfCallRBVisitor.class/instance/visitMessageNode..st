getting self calls
visitMessageNode: aMessageNode 
	aMessageNode isSelfSend ifTrue: [ selectors add: aMessageNode selector ].

	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) 
		ifTrue: [self visitNode: aMessageNode receiver].
	aMessageNode arguments do: [:each | self visitNode: each]
