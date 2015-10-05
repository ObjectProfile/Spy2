menu
menuCommandOn32: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: self applicationName, '32')
		order: 0.26; 
		parent: self applicationName;
		label: self applicationName, ' @ Class Super...';
		icon: self icon;
		action:[ self new profileClassAskWithSuperclasses ] 