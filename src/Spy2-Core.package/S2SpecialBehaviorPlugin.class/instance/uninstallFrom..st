hooks
uninstallFrom: aClass
	self installOnClassSide 
		ifTrue: [ self rawUninstallFrom: aClass class ] 
		ifFalse: [ self rawUninstallFrom: aClass ]