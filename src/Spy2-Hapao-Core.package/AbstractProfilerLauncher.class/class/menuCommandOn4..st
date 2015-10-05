menu
menuCommandOn4: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '4')
		order: 0.4; 
		parent: self applicationName;
		label: self applicationName, ' @ ClassCategory ...';
		icon: self icon;
		action: [ self new profileClassCategoryAsk ]