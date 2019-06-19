visualization
visualizeOldModel: beforeModel newModel: afterModel

	| executedMethodsBefore executedMethodsAfter commonMethods onlyBeforeMethods onlyAfterMethods v onlyMBElements onlyMAElements comonMElements hOutgoing |
	executedMethodsBefore := beforeModel allExecutedMethods.
	executedMethodsAfter := afterModel allExecutedMethods.
	commonMethods := OrderedCollection new.
	executedMethodsBefore do: [ :mb | 
		| cName |
		cName := mb classSpy className.
		executedMethodsAfter do: [ :ma |
			(ma classSpy className = cName and: [ ma selector = mb selector ]) ifTrue: [ 
				commonMethods add: (S2ExCompMethod new beforeMethod: mb; afterMethod: ma) ]
		] 
	].

	onlyBeforeMethods := executedMethodsBefore select: [ :mmb | commonMethods noneSatisfy: [ :m | m beforeMethod == mmb ] ].
	onlyAfterMethods := executedMethodsAfter select: [ :mma | commonMethods noneSatisfy: [ :m | m afterMethod == mma ] ].


	v := RSView new.
	onlyMBElements := RSShapeBuilder circle size: [ :m | m numberOfExecutions + 5 ]; color: Color blue trans; elementsOn: onlyBeforeMethods.
	onlyMAElements := RSShapeBuilder circle size: [ :m | m numberOfExecutions + 5 ]; color: Color yellow trans; elementsOn: onlyAfterMethods.
	comonMElements := RSShapeBuilder box 
								width: [ :m | m beforeMethod numberOfExecutions + 5 ];
								height: [ :m | m afterMethod numberOfExecutions + 5 ];
								color: Color green trans; elementsOn: commonMethods.
	v addAll: onlyMBElements; addAll: onlyMAElements; addAll: comonMElements.
	v elements @ RSPopup @ RSDraggable.
	RSEdgeBuilder line
		view: v;
		color: Color blue trans;
		moveBehind;
		withBorderAttachPoint;
		fromElements: comonMElements;
		connectToAll: [ :m | m beforeMethod incomingCalls, m beforeMethod outgoingCalls ].

	RSEdgeBuilder line
		view: v;
		color: Color yellow trans;
		moveBehind;
		withBorderAttachPoint;
		fromElements: comonMElements;
		connectToAll: [ :m | m afterMethod incomingCalls, m afterMethod outgoingCalls ].

	RSEdgeBuilder line
		view: v;
		color: Color gray trans;
		moveBehind;
		withBorderAttachPoint;
		elements: comonMElements;
		connectToAll: [ :m | m connectedToAllIn: commonMethods ].

	RSTreeLayout on: v elements.
	
	hOutgoing := RSHighlightable new withOutgoingEdges.
	hOutgoing highlightShape color: Color red trans.
	v elements @ hOutgoing.
	v @ RSControlsView.

	"ins := RSInspectable new.
	ins inspectElementBlock: [ :m |
		| tv |
		tv := RSView new.
		tv add: (RSShapeBuilder label elementOn: m sourceCode).
		tv open
	].
	v elements @ ins."
	v elements @ (RSMenuActivable new menuDo: [ :menu :element | menu add: 'Inspect' target: element model selector: #inspect ]).
	v open.
	self halt.