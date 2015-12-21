accessing
v1_1_4: spec
	<version:'1.1.4' imports:#('0.3-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #stable.
		spec 
			project: 'Roassal2' with: '1.20';
			package: 'Spy2-Core' with: 'Spy2-Core-AlexandreBergel.28';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlexandreBergel.6';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlejandroInfante.1';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlejandroInfante.7';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlexandreBergel.12';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlexandreBergel.30';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-AlexandreBergel.9';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-AlexandreBergel.12';
			package: 'Spy2-Hapao-EmmaReport' with: 'Spy2-Hapao-EmmaReport-AlejandroInfante.2']