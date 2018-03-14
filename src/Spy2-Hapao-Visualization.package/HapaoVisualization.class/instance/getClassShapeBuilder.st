visualization
getClassShapeBuilder
	| classShapeBuilder |
	classShapeBuilder := RTShapeBuilder new.
	classShapeBuilder rectangle
		borderColor: Color black;
		if: #isTestClass borderColor: Color green;
		fillColor: Color transparent.
	^ classShapeBuilder