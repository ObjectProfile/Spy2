*Spy2-Hapao-Visualization
gtInspectorViewCoverageIn: composite
	"<gtInspectorPresentationOrder: 20>
	| classToMeasureCoverage referencingUnitTest |
	composite roassal2
		title: 'Coverage';
		painting: [ :view |
			view @ RTDraggableView.
			classToMeasureCoverage := self.
			referencingUnitTest := (SystemNavigation new allReferencesTo: classToMeasureCoverage binding) collect: #realClass.
			referencingUnitTest := referencingUnitTest select: [ :c | c inheritsFrom: TestCase ].
			referencingUnitTest ifNotEmpty: 
				[(Hapao2 runTestsForClasses: referencingUnitTest , { classToMeasureCoverage })
					visualizeOn: view.
					view @ RTDoubleScrollBar ] ]"