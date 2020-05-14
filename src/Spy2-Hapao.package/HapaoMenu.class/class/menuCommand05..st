world menu
menuCommand05: builder
	<worldMenu>
	(builder item: 'HapaoAbout')
		order: 0.7;
		label: 'About Hapao';
		parent: #Hapao;
		icon: (self iconNamed: 'smallInfo');
		action: [ self new openAbout. ].
	