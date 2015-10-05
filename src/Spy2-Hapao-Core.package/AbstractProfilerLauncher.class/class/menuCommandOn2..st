menu
menuCommandOn2: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '2')
		order: 0.2; 
		parent: self applicationName;
		label: self applicationName, ' @ Class ...';
		icon: self icon;
		action:[ self new profileClassAsk ] 