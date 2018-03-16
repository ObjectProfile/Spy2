world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Live chat')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Load latest version';
			icon: self image;
			action: [ self new loadLatestVersion ]