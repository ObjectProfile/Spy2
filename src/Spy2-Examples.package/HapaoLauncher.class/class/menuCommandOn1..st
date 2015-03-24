menu
menuCommandOn1: aBuilder
	<worldMenu>

	((aBuilder item: #'Hapao') icon: self hapaoIcon)
	withSeparatorAfter;
	with: [
	(aBuilder item: #'Hapao1')
		order: 0.1; 
		parent: #Hapao;
		label: 'Hapao @ Class';
		icon: self hapaoIcon;
		action:[ self new profileClass ] ]