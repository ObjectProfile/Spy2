visualization
addClassEdges: spyClasses scope: elements view: view
	RTEdgeBuilder new
		view: view;
		objects: spyClasses;
		connectFrom: [ :e | (spyClasses select: [ :i | i theClass = e theClass superclass ]) at: 1 ifAbsent: [ nil ] ]
	"RTEdge
		buildEdgesFromObjects: spyClasses
		from: [ :e | (spyClasses select: [ :i | i theClass = e theClass superclass ]) at: 1 ifAbsent: [ nil ] ]
		to: #yourself
		using: (RTLine new attachPoint: RTVerticalAttachPoint instance)
		inView: view
		scope: elements"