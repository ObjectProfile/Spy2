baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [			
			spec baseline: 'Roassal3' with: [ 
				spec
					loads: 'Core';
					repository: 'github://ObjectProfile/Roassal3' ].
					
			spec
				package: 'Spy2-Core';
				package: 'Spy2-Scenario' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Tests' with: [ spec requires: 'Spy2-Core' ];
				package: 'GT-Spy2-Inspector' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Examples' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Hapao' with: [ spec requires: 'Spy2-Core' ];
				package: 'Spy2-Hapao-Visualization' with: [ spec requires: 'Spy2-Hapao' ];
				package: 'Spy2-Hapao-EmmaReport' with: [ spec requires: 'Spy2-Hapao' ]
				.
			
			spec group: 'Core' with: #(
				'Spy2-Core' 
			).
			spec group: 'default' with: #(
				'Roassal3'
				'Spy2-Core' 
				'Spy2-Scenario'
				'Spy2-Tests' 
				'GT-Spy2-Inspector' 
				'Spy2-Examples' 
				'Spy2-Hapao' 
				'Spy2-Hapao-Visualization' 
				'Spy2-Hapao-EmmaReport').
			 ]