menu
menuCommandOn32: aBuilder
	<worldMenu>

	(aBuilder item: #'Hapao32')
		order: 0.26; 
		parent: #Hapao;
		label: 'Hapao @ Class Super...';
		icon: self hapaoIcon;
		action:[ self new profileClassAskWithSuperclasses ] 