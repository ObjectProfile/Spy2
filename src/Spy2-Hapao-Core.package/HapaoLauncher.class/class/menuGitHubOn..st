menu
menuGitHubOn: aBuilder
	<worldMenu>
	"Do nothing if not overriden"
	self applicationName ifNil: [ ^ self ].

	(aBuilder item: ('GitHub') asSymbol)
			order: 0.7; 
			parent: self applicationName;
			label: 'GitHub';
			icon: self image;
			action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Hapao' ]
"			
	(aBuilder item: self applicationName, '6')
		order: 0.6; 
		parent: self applicationName;
		label: self applicationName, 'Repeat last run';
		icon: self icon;
		action: [ self new profileLastClasses ]"