visualization
gtInspectorViewStatOn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'Stat';
		initializeView: [ | v |
			v := RTView new.
			v add: (RTLabel elementOn: 'Number of methods executed: ', (self allMethods select: #isExecuted) size asString).
			v add: (RTLabel elementOn: 'Number of methods with more than 2 return types: ', (self allMethods select: #hasMoreThanOneReturnType) size asString).
			RTVerticalLineLayout on: v elements.
			v ]
		