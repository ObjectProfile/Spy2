menu
menuCommandOn3: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '3')
		order: 0.3; 
		parent: self applicationName;
		label: self applicationName, ' @ ClassCategory';
		icon: self icon;
		action: [ self new profileClassCategory ]