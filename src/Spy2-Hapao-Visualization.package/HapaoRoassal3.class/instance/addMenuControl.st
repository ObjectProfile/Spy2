visualization
addMenuControl
	| menuButton buttons bshape lshape high |
	bshape := RSShapeBuilder polygon
		cornerRadii: 5;
		points:{ 0@0. 120@0. 120@ 15. 105@30. 0@30};
		color: Color gray.
	lshape := RSShapeBuilder label 
		bold;
		color: Color white.
	high := RSHighlightable new.
	high highlightElements: [ :b | {b attributes at: #box} ].
	high highlightShape color: Color black.
	menuButton := RSShapeBuilder composite 
		isFixed: true;
		onMyselfDo: [ :m| [:e |
			| box label |
			box := bshape elementOn: m.
			box position: 0@0.
			label := lshape elementOn: m.
			e attributes at: #box put: box.
			e shapes: (TSGroup with: box with: label) ] ];
		addInteraction: high.
	buttons  := menuButton elementsOn: #(Classes Tests).
	buttons do: [ :e | e when: TSMouseClick do: [ self elementsToShow: e model ] ].
	buttons add: (menuButton elementOn: 'Profile it Again'). 
	buttons last when: TSMouseClick do: [ self rebuild ].
	buttons do: [ :b | 
		b view: mainView. "for highlight interaction"
		mainView addShape: b trachelShape ].
	
	RSHorizontalLineLayout on: buttons.
	buttons translateBy: 5@5.
	buttons last translateBy: 20@0.