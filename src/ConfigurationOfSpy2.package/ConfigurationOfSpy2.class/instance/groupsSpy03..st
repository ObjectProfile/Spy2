baseline03
groupsSpy03: spec
	spec
		group: 'Core' with: #('Spy2-Core');
		group: 'Tests' with: #('Core' 'Spy2-Tests');
		group: 'Visualization' with: #('Core' 'Spy2-Visualization' 'GT-Spy2-Inspector')