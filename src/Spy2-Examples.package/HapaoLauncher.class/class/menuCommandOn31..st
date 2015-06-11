menu
menuCommandOn31: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao31')
		order: 0.25; 
		parent: #Hapao;
		label: 'Hapao @ Class Super';
		icon: self hapaoIcon;
		action:[ self new profileClassWithSuperclasses ]