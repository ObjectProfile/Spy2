*Spy2-Visualization
getClassShapeBuilder
	| classShapeBuilder |
	classShapeBuilder := RTShapeBuilder new.
	classShapeBuilder rectangle
		borderColor: Color black.
	^ classShapeBuilder