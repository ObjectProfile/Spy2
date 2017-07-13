accessing
v1_1_14: spec
	<version:'1.1.14' imports:#('0.3-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #stable.
		spec 
			project: 'Roassal2' with: '1.49';
			package: 'Spy2-Core' with: 'Spy2-Core-AlejandroInfante.40';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlexandreBergel.7';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlejandroInfante.1';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlejandroInfante.12';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlexandreBergel.12';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlexandreBergel.38';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-AlejandroInfante.16';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-AlejandroInfante.19';
			package: 'Spy2-Hapao-EmmaReport' with: 'Spy2-Hapao-EmmaReport-AlejandroInfante.2']