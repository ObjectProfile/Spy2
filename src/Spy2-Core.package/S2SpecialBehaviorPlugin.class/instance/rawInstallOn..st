installing
rawInstallOn: aClass
	(aClass includesSelector: self selector)
		ifTrue: [ self installOriginalMethodTemplateOn: aClass ]
		ifFalse: [ self installSuperCallTemplateOn: aClass ]