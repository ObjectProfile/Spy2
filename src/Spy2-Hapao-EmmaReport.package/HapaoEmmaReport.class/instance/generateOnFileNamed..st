as yet unclassified
generateOnFileNamed: name
	| coverage |
	coverage := StandardFileStream 
		forceNewFileNamed: name , '-Coverage.xml'.
	[ self generateOn: coverage ]
		ensure: [ coverage close ]