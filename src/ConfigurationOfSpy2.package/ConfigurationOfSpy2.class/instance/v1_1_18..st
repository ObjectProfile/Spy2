versions
v1_1_18: spec
	<version:'1.1.18' imports:#('0.3-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #stable.
		spec 
			project: 'Roassal2' with: '1.56';
			package: 'Spy2-Core' with: 'Spy2-Core-RafaelLuqueLeiva.43';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlexandreBergel.7';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-RafaelLuqueLeiva.2';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlexandreBergel.15';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlexandreBergel.12';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlexandreBergel.47';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-AlejandroInfante.16';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-AlexandreBergel.20';
			package: 'Spy2-Hapao-EmmaReport' with: 'Spy2-Hapao-EmmaReport-AlejandroInfante.2']