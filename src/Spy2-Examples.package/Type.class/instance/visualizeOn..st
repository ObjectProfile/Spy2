visualization
visualizeOn: view
	"This is a generated visualization"
	"| b |
	view @ RTDraggableView.
	
	b := RTMondrian new.
	b view: view.
	b nodes: self allExecutedClasses forEach: [ :aClass |
		b shape rectangle size: [ :m | m numberOfExecutions sqrt ].
		b interaction fixedPopupText: [ :m | m signature ].
		b nodes: aClass allRunMethods.
		b layout grid.
	].
	b shape orthoVerticalLine.
	b edges connectFrom: #superclass.
	b layout tree.
	b build"