visualization
visualizeOn: view
	"This is a generated visualization"

	| classShapeBuilder methodShapeBuilder interactionBuilder classElements connectedMethods singleMethods edges   classElementsUT connectedClassesUT singleClassesUT classElementsNotUT connectedClassesNotUT singleClassesNotUT |
	
	self initializeView: view.
	
	self setMaxValues.
	interactionBuilder := self getInteractionBuilder.
	classShapeBuilder := self getClassShapeBuilder.
	methodShapeBuilder := self getMethodShapeBuilder.
	classElements := RTGroup new.
	self allUnitTests , self allPlainClasses
		do: [ :each | 
			| mths classElement |
			classElement := classShapeBuilder elementOn: each.
			view add: classElement.
			mths := methodShapeBuilder elementsOn: each allMethods.
			view addAll: mths.
			edges := self addMethodEdges: each scope: mths view: view.	
				
			"Connected methods"
			connectedMethods := mths select: [ :m | m connectedEdges notEmpty ].
			RTSugiyamaLayout on: connectedMethods edges: edges.	
				
			"Single methods"
			singleMethods := mths select: [ :m | m connectedEdges isEmpty ].
			singleMethods := singleMethods sortedAs: [ :el | el model numberOfLinesOfCode ].
			singleMethods := singleMethods asGroup.
			RTFlowLayout on: singleMethods.
			TRConstraint move: singleMethods onTheRightOf: connectedMethods.
			singleMethods translateBy: 5 @ 0.
			
			"No need of method code popup."
			"mths @ (self hapaoPopupUsing: methodShapeBuilder)."
			mths @ RTPopup.
			
			RTNest new on: classElement nest: mths.
			classElement @ RTDraggable @ RTPopup @ (RTLabeled new setAsHighlightable).
			classElements add: classElement.
			interactionBuilder setUpElements: mths ].
	interactionBuilder setUpElements: classElements.
	
	self addClassEdges: profiler allClasses scope: classElements view: view.
	
	
	"UNIT TEST"
	classElementsUT := classElements select: [ :el | el model isUnitTest ].
	"connected classes"
	connectedClassesUT := classElementsUT select: [ :m | m connectedEdges notEmpty ].
	RTTreeLayout on: connectedClassesUT.
	
	"single classes"
	singleClassesUT := classElementsUT select: [ :m | m connectedEdges isEmpty ].
	singleClassesUT := singleClassesUT sortedAs: [ :el | el model numberOfMethods ].
	singleClassesUT := singleClassesUT asGroup.
	RTFlowLayout on: singleClassesUT.
	
	
	"NOT UNIT TEST"
	classElementsNotUT := classElements reject: [ :el | el model isUnitTest ].
	"connected classes"
	connectedClassesNotUT := classElementsNotUT select: [ :m | m connectedEdges notEmpty ].
	RTTreeLayout on: connectedClassesNotUT.
	
	"single classes"
	singleClassesNotUT := classElementsNotUT select: [ :m | m connectedEdges isEmpty ].
	singleClassesNotUT := singleClassesNotUT sortedAs: [ :el | el model numberOfMethods ].
	singleClassesNotUT := singleClassesNotUT asGroup.
	RTFlowLayout on: singleClassesNotUT.
	
	"Layout the whole thing!"
	RTHorizontalLineLayout on: { connectedClassesUT . singleClassesUT . connectedClassesNotUT . singleClassesNotUT }.
"	TRConstraint move: singleClassesUT onTheRightOf: connectedClassesUT.
	TRConstraint move: connectedClassesNotUT onTheRightOf: singleClassesUT.
	TRConstraint move: singleClassesNotUT onTheRightOf: connectedClassesNotUT.
"	
"	
	RTTreeLayout on: classElements.
"

	self visualizeLegendOn: view.
	"view @ RTDoubleScrollBar."