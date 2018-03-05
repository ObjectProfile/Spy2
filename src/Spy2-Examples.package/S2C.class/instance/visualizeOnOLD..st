visualization
visualizeOnOLD: view
	"This is a generated visualization"
	| allClasses  classShapeBuilder methodShapeBuilder  interactionBuilder classElements|
	interactionBuilder := self getInteractionBuilder.
	classShapeBuilder := self getClassShapeBuilder.
	methodShapeBuilder := self getMethodShapeBuilder.
	classElements := RTGroup new. 
	allClasses := self allClasses.
	allClasses do: [ :each | |mths classElement|
		classElement := (classShapeBuilder elementOn: each).
		view add: classElement.
		mths := (methodShapeBuilder elementsOn: each methods).
		view addAll: mths.
		RTGridLayout on: mths.
		mths @ RTDraggable @ RTPopup.
		RTNest new on: classElement nest: mths.
		classElement @ RTDraggable.
		classElements add: classElement.
		interactionBuilder setUpElements: mths.			
	].
	interactionBuilder setUpElements: classElements.
	RTGridLayout on: classElements
	