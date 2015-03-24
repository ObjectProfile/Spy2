visualization
getMethodShapeBuilder
	| methodShapeBuilder |
	methodShapeBuilder := RTBoundedShapeBuilder new.
	methodShapeBuilder rectangle
		borderColor: Color black;
		if: #isRead borderColor: Color blue;
		if: #isWrite borderColor: Color red;
		fillColor: Color white.
	^ methodShapeBuilder