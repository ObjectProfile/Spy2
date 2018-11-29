versions
v1_1_20: spec
	<version:'1.1.20' imports:#('0.3-baseline')>
	
	spec for: #common do: [ 
		spec blessing: #stable.
		spec 
			project: 'Roassal2' with: '1.60';
			package: 'Spy2-Core' with: 'Spy2-Core-RafaelLuqueLeiva.43';
			package: 'Spy2-Visualization' with: 'Spy2-Visualization-AlexandreBergel.13';
			package: 'Spy2-Scenario' with: 'Spy2-Scenario-AlexandreBergel.3';
			package: 'Spy2-Tests' with: 'Spy2-Tests-AlexandreBergel.16';
			package: 'GT-Spy2-Inspector' with: 'GT-Spy2-Inspector-AlexandreBergel.12';
			package: 'Spy2-Examples' with: 'Spy2-Examples-AlexandreBergel.51';
			package: 'Spy2-Hapao-Core' with: 'Spy2-Hapao-Core-akevalion.17';
			package: 'Spy2-Hapao-Visualization' with: 'Spy2-Hapao-Visualization-akevalion.22';
			package: 'Spy2-Hapao-EmmaReport' with: 'Spy2-Hapao-EmmaReport-AlejandroInfante.2']