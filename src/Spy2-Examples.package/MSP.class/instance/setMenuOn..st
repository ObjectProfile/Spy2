visualize - buttons
setMenuOn: canvas
	| h menus |
	h := RSHighlightable defaultBlueLabel.
	menus := RSGroup new.
	{'Most created'. [ self showListMostCreatedObjects ].
	'Clusters'. [ self showClusters ].
	'Set for comparison'. [ self setForComparison ].
"	'Set Canvas'. [ Smalltalk at: #TMPCanvas put: canvas].
	'Use set canvas'. [ self useLayoutFromView: (Smalltalk at: #TMPCanvas)toView: canvas ].
"	'Inspect'. [ self inspect ]. } pairsDo: [ :text :action|
		menus add: (RSLabel new 
			text: text;
			addInteraction: h;
			isFixed: true;
			when: RSMouseClick do: action;
			yourself).
		].
	RSHorizontalLineLayout on: menus.
	menus translateBy: 5.
	canvas addAllShapes: menus.