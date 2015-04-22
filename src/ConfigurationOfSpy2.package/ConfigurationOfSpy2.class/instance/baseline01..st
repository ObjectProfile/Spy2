accessing
baseline01: spec
	<version:'0.1-baseline'>
	
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/ObjectProfile/Spy2/main'.
		spec project: 'Roassal2' with: [ 
			spec
				versionString: #bleedingEdge;
				className: 'ConfigurationOfRoassal2'; 
				repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main'.
			].
		spec
			package: 'Spy2-Core';
			package: 'Spy2-Visualization' with: [ spec 
														requires: 'Spy2-Core';
														requires: 'Roassal2' ];
			package: 'Spy2-Scenario' with: [ spec requires: 'Spy2-Core' ];
			package: 'Spy2-Tests' with: [ spec 
														requires: 'Spy2-Core';
														requires: 'Spy2-Scenario' ];
			package: 'Spy2-Examples' with: [ spec
														requires: 'Spy2-Core';
														requires: 'Spy2-Visualization' ].
		spec 
			group: 'Core' 	with: #('Spy2-Core');
			group: 'Tests'	with: #('Core' 'Spy2-Tests');
			group: 'Examples' with: #('Core' 'Spy2-Examples');
			group: 'Complete' with: #('ALL')
		].