menu
menuCommandOn4: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao4')
		order: 0.4; 
		parent: #Hapao;
		label: 'Hapao @ ClassCategory ...';
		icon: self hapaoIcon;
		action: [ self new profileClassCategoryAsk ]