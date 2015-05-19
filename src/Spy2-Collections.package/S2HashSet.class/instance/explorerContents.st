as yet unclassified
explorerContents 
	^self asOrderedCollection withIndexCollect: [ :each :index |
		ObjectExplorerWrapper
			with: each
			name: index printString
			model: self]