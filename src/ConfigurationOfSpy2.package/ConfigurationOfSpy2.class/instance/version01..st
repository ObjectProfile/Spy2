accessing
version01: spec
	<version:'0.1' imports:#('0.1-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #release.
		spec repository: 'http://smalltalkhub.com/mc/ObjectProfile/S2py/main'.
		spec project: 'Roassal2' with: '1.9'.
		spec 
			package: 'Spy2-Core' with: 'Spy2-Core-AlejandroInfante.3';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlejandroInfante.2';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlejandroInfante.1';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlejandroInfante.1';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlejandroInfante.3'
		]