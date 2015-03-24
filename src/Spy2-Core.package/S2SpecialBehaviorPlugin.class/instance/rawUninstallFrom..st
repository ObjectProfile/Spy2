installing
rawUninstallFrom: aClass
	oldMethods 
		at: aClass 
		ifPresent: [ :method | 
			aClass methodDict at: self selector put: method.
			oldMethods removeKey: aClass. ] 
		ifAbsent: [ aClass removeSelectorSilently: self selector ]