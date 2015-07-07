baseline03
definitionSpy03: spec
	spec
		package: 'Spy2-Core';
		package: 'Spy2-Visualization'
			with: [ 
					spec
						requires: 'Spy2-Core';
						requires: 'Roassal2' ];
		package: 'Spy2-Scenario' with: [ spec requires: 'Spy2-Core' ];
		package: 'Spy2-Tests'
			with: [ 
					spec
						requires: 'Spy2-Core';
						requires: 'Spy2-Scenario' ];
		package: 'GT-Spy2-Inspector'
			with: [ 
					spec
						requires: 'Spy2-Core';
						requires: 'Spy2-Visualization' ];
		package: 'Spy2-Examples'
			with: [ 
					spec
						requires: 'Spy2-Core';
						requires: 'GT-Spy2-Inspector';
						requires: 'Spy2-Visualization' ]