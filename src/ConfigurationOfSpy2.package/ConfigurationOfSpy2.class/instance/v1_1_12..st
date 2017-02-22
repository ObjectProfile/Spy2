accessing
v1_1_12: spec
	<version:'1.1.12' imports:#('0.3-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #stable.
		spec 
			project: 'Roassal2' with: '1.41';
			package: 'Spy2-Core' with: 'Spy2-Core-AlejandroInfante.33';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlexandreBergel.7';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlejandroInfante.1';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlejandroInfante.8';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlexandreBergel.12';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlexandreBergel.37';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-AlexandreBergel.12';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-AlexandreBergel.15';
			package: 'Spy2-Hapao-EmmaReport' with: 'Spy2-Hapao-EmmaReport-AlejandroInfante.2']