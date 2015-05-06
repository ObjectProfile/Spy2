menu
menuCommandOn2: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao2')
		order: 0.2; 
		parent: #Hapao;
		label: 'Hapao @ Class ...';
		icon: self hapaoIcon;
		action:[ self new profileClassAsk ] 