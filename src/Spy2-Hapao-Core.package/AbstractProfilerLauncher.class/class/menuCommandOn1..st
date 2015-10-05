menu
menuCommandOn1: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].
	
	((aBuilder item: self applicationName) icon: self icon)
	withSeparatorAfter;
	with: [
	(aBuilder item: self applicationName, '1')
		order: 0.1; 
		parent: self applicationName;
		label: self applicationName, ' @ Class';
		icon: self icon;
		action:[ self new profileClass ] ]