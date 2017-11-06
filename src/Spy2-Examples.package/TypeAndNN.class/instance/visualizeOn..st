visualization
visualizeOn: view

	| b |
	b := RTMondrian new.
	b view: view.
	b nodes: (self allClasses select: #isExecuted) forEach: [ :cls |
		b shape box
			size: #numberOfDifferentReturnTypes;
			if: #hasMoreThanOneReturnType fillColor: Color red.
		b nodes: (cls allMethods select: #isExecuted).
		b layout grid.
	].
	b edges connectFrom: #superclass.
	b layout tree.
	b build.