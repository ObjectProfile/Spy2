visualization
visualizeOn: view
	"This is a generated visualization"
	| b |
	view @ RTDraggableView.
	
	b := RTMondrianViewBuilder new.
	b view: view.
	b nodes: self allExecutedClasses forEach: [ :aClass |
		b shape rectangle size: [ :m | m numberOfExecutions sqrt ].
		b interaction fixedPopupText: [ :m | m signature ].
		b nodes: aClass allRunMethods.
		b gridLayout.
	].
	b shape orthoVerticalLine.
	b edgesFrom: #superclass.
	b treeLayout.
	b applyLayout.