menu
menuCommandOn5: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao5')
		order: 0.5; 
		parent: #Hapao;
		label: 'Hapao @ Package';
		icon: self hapaoIcon;
		action:[ self new profilePackage ]