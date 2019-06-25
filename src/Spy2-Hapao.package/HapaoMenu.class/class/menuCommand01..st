world menu
menuCommand01: builder
	<worldMenu>
	(builder item: 'HapaoProfile')
		icon: self icon;
		label: 'Profile...';
		order: 0.0;
		parent: #Hapao;
		with: [
			(builder item: 'HapaoClass1')
				order: 0.1;
				label: 'Recent Class';
				icon: (self iconNamed: 'class');
				action: [ HapaoLauncher new profileClass ].
			(builder item: 'HapaoClass2')
				order: 0.2;
				label: 'Class by name...';
				icon: (self iconNamed: 'class');
				action: [ HapaoLauncher new profileClassAsk ].
			(builder item: 'HapaoClass3')
				order: 0.3;
				label: 'Recent Class with superclass';
				icon: (self iconNamed: 'smallHierarchyBrowser');
				action: [ HapaoLauncher new profileClassWithSuperclasses ].
			(builder item: 'HapaoClass4')
				order: 0.4;
				label: 'Class bye name with superclass...';
				icon: (self iconNamed: 'smallHierarchyBrowser');
				action: [ HapaoLauncher new profileClassAskWithSuperclasses ].
				
			(builder item: 'HapaoClass5')
				order: 0.5;
				label: 'Package tag';
				icon: (self iconNamed: 'protocolExtension');
				action: [ HapaoLauncher new profileClassCategory ].
			(builder item: 'HapaoClass6')
				order: 0.6;
				label: 'Package tag...';
				icon: (self iconNamed: 'protocolExtension');
				action: [ HapaoLauncher new profileClassCategoryAsk ].
				
			(builder item: 'HapaoClass7')
				order: 0.7;
				label: 'Package';
				icon: (self iconNamed: 'configLoaded');
				action: [ HapaoLauncher new profilePackage ].
			(builder item: 'HapaoClass8')
				order: 0.8;
				label: 'Package...';
				icon: (self iconNamed: 'configLoaded');
				withSeparatorAfter;
				action: [ HapaoLauncher new profilePackageAsk ].
			 ].