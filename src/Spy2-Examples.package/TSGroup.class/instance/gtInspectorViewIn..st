ui
gtInspectorViewIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'View';
		initializeView: [ RTMondrian new ];
		painting: [ :mondrian :each | 
							self paintOn: mondrian
						]