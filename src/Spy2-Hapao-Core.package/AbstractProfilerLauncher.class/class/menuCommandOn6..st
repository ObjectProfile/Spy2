menu
menuCommandOn6: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '6')
		order: 0.6; 
		parent: self applicationName;
		label: self applicationName, ' @ Package ...';
		icon: self icon;
		action: [ self new profilePackageAsk ]