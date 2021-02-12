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
			spec baseline: 'Roassal3Exporters' with: [ 
				spec
					loads: 'AFrame';
					repository: 'github://ObjectProfile/Roassal3Exporters' ].
			spec
				package: 'Spy2-Core';
				package: 'Spy2-Scenario';
				package: 'Spy2-Tests';
				package: 'GT-Spy2-Inspector';
				package: 'Spy2-Examples';
				package: 'Spy2-Hapao';
				package: 'Spy2-Hapao-Visualization' 
					with: [ spec requires: #('Roassal3') ];
				package: 'Spy2-Hapao-Visualization-AFrame'
					with: [ spec requires: #('Roassal3Exporters') ];
				package: 'Spy2-Hapao-EmmaReport'.
			
			spec 
				group: 'Core' with: #(
					'Spy2-Core');
				group: 'Mini' with: #(
					'Core'
					'Roassal3'
					'Spy2-Scenario'
					'Spy2-Tests' 
					'GT-Spy2-Inspector' 
					'Spy2-Examples' 
					'Spy2-Hapao' 
					'Spy2-Hapao-Visualization' 
					'Spy2-Hapao-EmmaReport'
				);
				group: 'AFrame' with: #(
					'Mini'
					'Spy2-Hapao-Visualization-AFrame'
				);
				group: 'default' with: #(
					'Mini'
				).
		]