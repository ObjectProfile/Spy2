baseline03
definitionHapao03: spec
	spec
		package: 'Spy2-Hapao-Core' with: [ spec requires: 'Spy2-Core' ];
		package: 'Spy2-Hapao-Visualization' with: [ 
					spec
						requires: 'Spy2-Hapao-Core';
						requires: 'GT-Spy2-Inspector';
						requires: 'Spy2-Visualization' ];
		package: 'Spy2-Hapao-EmmaReport' with: [ 
			spec requires: 'Spy2-Hapao-Core' ]