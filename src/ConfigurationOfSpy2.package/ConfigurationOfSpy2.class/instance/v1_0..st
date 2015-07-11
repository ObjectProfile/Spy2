accessing
v1_0: spec
	<version:'1.0' imports:#('0.3-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #release.
		spec 
			project: 'Roassal2' with: '1.11';
			package: 'Spy2-Core' with: 'Spy2-Core-AlejandroInfante.14';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlejandroInfante.3';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlejandroInfante.1';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlejandroInfante.4';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlejandroInfante.11';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlexandreBergel.11';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-AlejandroInfante.5';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-AlejandroInfante.6';
			package: 'Spy2-Hapao-EmmaReport' with: 'Spy2-Hapao-EmmaReport-AlejandroInfante.2']