hooks
installOn: aClass
	self installOnClassSide 
		ifTrue: [ self rawInstallOn: aClass class ] 
		ifFalse: [ self rawInstallOn: aClass ]