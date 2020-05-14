world menu
menuCommand04: builder
	<worldMenu>
	(builder item: 'Spy2Discord')
		order: 0.6;
		label: 'Give us your feedback';
		parent: #Hapao;
		icon: self discord;
		action: [ WebBrowser openOn: 'https://discord.gg/YTEaAu6' ].	
	