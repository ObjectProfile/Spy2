world menu
menuCommand03: builder
	<worldMenu>
	(builder item: 'Spy2Git')
		order: 0.3;
		label: 'Spy2 github page ';
		parent: #Hapao;
		icon: (self iconNamed: 'github');
		action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Spy2' ].	
	
	(builder item: 'HapaoGit')
		order: 0.4;
		label: 'Hapao github page ';
		parent: #Hapao;
		icon: (self iconNamed: 'github');
		action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Hapao' ];
		withSeparatorAfter.	
	
	(builder item: 'HapaoBug')
		order: 0.5;
		label: 'Report an Issue';
		parent: #Hapao;
		icon: (self iconNamed: 'smallDebug');
		action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Spy2/issues/new' ].	
	(builder item: 'HapaoAbout')
		order: 0.6;
		label: 'About Hapao';
		parent: #Hapao;
		icon: (self iconNamed: 'smallInfo');
		action: [ self new openAbout. ].
	