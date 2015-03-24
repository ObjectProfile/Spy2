visualization
visualize

	| v classBoxes methods shapeBuilder methodElements legendBuilder |
	v := RTView new.
	 
	classBoxes := RTBox new elementsOn: (self allClasses select: #hasBeenExecuted).
	v addAll: classBoxes.
	classBoxes @ RTPopup.
	RTNest new 
		for: classBoxes add: [ :group :aClass |
			methods := aClass methods select: #hasBeenExecuted.
			
			shapeBuilder := RTShapeBuilder new.
			shapeBuilder rectangle 
				size: 8;
				if: #isPrivate fillColor: Color white;
				if: #isProtected fillColor: Color blue;
				if: #isPublic fillColor: Color green.
			
			methodElements := shapeBuilder elementsOn: methods. 
			methodElements @ RTPopup.
			group addAll: (methodElements select: [ :m | m model isPrivate ]).
			group addAll: (methodElements select: [ :m | m model isProtected ]).
			group addAll: (methodElements select: [ :m | m model isPublic ]).
			RTGridLayout on: group.
		].

	RTGridLayout new on: classBoxes.
	
	"LEGEND"
	legendBuilder := RTLegendBuilder new.
	legendBuilder view: v.
	legendBuilder addText: '-= Method Visibility profile =-'.
	legendBuilder addText: ''.
	legendBuilder addText: self ratioOfPrivateMethods asString, ' private method'.
	legendBuilder addText: self ratioOfProtectedMethods asString, ' protected method'.
	legendBuilder addText: self ratioOfPublicMethods asString, ' public method'.
	legendBuilder addText: ''.
	legendBuilder addColor: Color white text: 'private'.
	legendBuilder addColor: Color blue text: 'protected'.
	legendBuilder addColor: Color green text: 'public'.
	legendBuilder build.
	
	v open