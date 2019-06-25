world menu
menuCommand02: builder
	<worldMenu>
	(builder item: 'HapaoRepeat')
		label: 'Repeat last run';
		order: 0.1;
		parent: #Hapao;
		icon: (self iconNamed: 'smallUpdate');
		action: [ HapaoLauncher new profileLastClasses ].	
	(builder item: 'HapaoReset')
		label: 'Reset comparison profiler';
		order: 0.2;
		parent: #Hapao;
		icon: (self iconNamed: 'smallCogInitialState');
		withSeparatorAfter;
		action: [ S2Profiler cleanGlobal. self inform: 'Done!' ].