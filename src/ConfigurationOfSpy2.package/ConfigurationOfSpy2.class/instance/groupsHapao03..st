baseline03
groupsHapao03: spec
	^ spec 
		group: 'HapaoCore' with: #('Spy2-Hapao-Core');
		group: 'HapaoVisualization' with: #('HapaoCore' 'Visualization' 'Spy2-Hapao-Visualization');
		group: 'HapaoEmmaReport' with: #('HapaoCore' 'Spy2-Hapao-EmmaReport')