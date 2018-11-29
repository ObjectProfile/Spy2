baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [			
			spec baseline: 'Roassal2' with: [ 
				spec repository: 'github://ObjectProfile/Roassal2/src' ].
					
			spec
				package: 'Spy2-Core' with: [ spec requires: #('Roassal2') ];
				package: 'Spy2-Visualization' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Scenario' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Tests' with: [ spec requires: 'Spy2-Core' ];
				package: 'GT-Spy2-Inspector' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Examples' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Hapao-Core' with: [ spec requires: 'Spy2-Hapao-Core' ];
				package: 'Spy2-Hapao-Visualization' with: [ spec requires: 'Spy2-Hapao-Core' ];
				package: 'Spy2-Hapao-EmmaReport' with: [ spec requires: 'Spy2-Hapao-Core' ]
				.
				
			spec group: 'default' with: #('Roassal2' 'Spy2-Core' 'Spy2-Visualization' 'Spy2-Scenario' 'Spy2-Tests' 'GT-Spy2-Inspector' 'Spy2-Examples' 'Spy2-Hapao-Core' 'Spy2-Hapao-Visualization' 'Spy2-Hapao-EmmaReport').
			 ]