visualization
addMenuControl
	| buttons |
	buttons  := #('Classes' 'Tests' 'Profile it Again') collect: [ :m | 
		| box label |
		box := RSPolygon new
			cornerRadii: 5;
			points:{ 0@0. 120@0. 120@ 15. 105@30. 0@30};
			color: Color gray.
		box position: 0@0.
		label := RSLabel new bold; text: m; color: Color white.
		RSComposite new
			isFixed: true;
			model: m;
			addInteraction: self menuButtonHiglight;
			shapes: { box. label };
			yourself
			 ]
		as: RSGroup.
	buttons allButLastDo: [ :b | b when: RSMouseClick do: [ self elementsToShow: b model ] ].
	buttons last when: RSMouseClick do: [ self rebuild ].
	buttons do: [ :b | mainCanvas addShape: b ].
	
	RSHorizontalLineLayout on: buttons.
	buttons translateBy: 5@5.
	buttons last translateBy: 20@0.