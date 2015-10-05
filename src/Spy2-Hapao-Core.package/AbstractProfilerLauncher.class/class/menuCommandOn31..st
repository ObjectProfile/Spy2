menu
menuCommandOn31: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '31')
		order: 0.25; 
		parent: self applicationName;
		label: self applicationName, ' @ Class Super';
		icon: self icon;
		action:[ self new profileClassWithSuperclasses ]