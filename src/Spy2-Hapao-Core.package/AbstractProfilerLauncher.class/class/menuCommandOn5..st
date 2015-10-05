menu
menuCommandOn5: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '5')
		order: 0.5; 
		parent: self applicationName;
		label: self applicationName, ' @ Package';
		icon: self icon;
		action:[ self new profilePackage ]