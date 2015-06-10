accessing
version04: spec
	<version:'0.4' imports:#('0.2-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #stable.
		spec repository: 'http://smalltalkhub.com/mc/ObjectProfile/Spy2/main'.
		spec project: 'Roassal2' with: '1.11'.
		spec 
			package: 'Spy2-Core' with: 'Spy2-Core-AlejandroInfante.7';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlejandroInfante.3';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlejandroInfante.1';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlejandroInfante.1';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlejandroInfante.11';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlejandroInfante.5';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-AlejandroInfante.4';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-AlexandreBergel.5'
		]