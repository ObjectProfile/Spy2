menu
menuCommandOn3: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao3')
		order: 0.3; 
		parent: #Hapao;
		label: 'Hapao @ ClassCategory';
		icon: self hapaoIcon;
		action: [ self new profileClassCategory ]