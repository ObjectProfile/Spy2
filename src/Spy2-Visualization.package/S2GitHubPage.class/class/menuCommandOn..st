world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: ('GitHub', self projectName) asSymbol)
			order: 0.001; 
			parent: self projectName asSymbol;
			label: 'GitHub', self projectName;
			icon: self image;
			action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Hapao' ]