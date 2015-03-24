visualization
getMethodShapeBuilder
	| methodShapeBuilder |
	methodShapeBuilder := RTBoundedShapeBuilder new.
	methodShapeBuilder rectangle
		borderColor: Color red;
		if: #hasBeenExecuted borderColor: Color black;
		if: #abstractMethod borderColor: Color blue;
		if: #isTest borderColor: Color green;
		fillColor: #color;
		height: [ :spyMethod | spyMethod lineCountForHeight ];
		width: #callersForWidth.
	^ methodShapeBuilder