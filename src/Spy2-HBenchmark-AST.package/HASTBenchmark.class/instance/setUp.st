as yet unclassified
setUp
	|regExpNames packages|
	regExpNames := #('Fuel*')
		"#('System*' 'Kernel*' 'Spec*' 'Nautilus*' 
		'Collections*' 'FileSystem*' 'Fuel*' 'Glamour*' 'Graphics*')".
	packages := regExpNames flatCollect: [ :exp | RPackage organizer packages select: [ :p | exp match: p name ] ].
	methodsSources := (packages flatCollect: #methods) collect: #sourceCode.