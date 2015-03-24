menu
menuCommandOn6: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao6')
		order: 0.6; 
		parent: #Hapao;
		label: 'Hapao @ Package ...';
		icon: self hapaoIcon;
		action: [ self new profilePackageAsk ]