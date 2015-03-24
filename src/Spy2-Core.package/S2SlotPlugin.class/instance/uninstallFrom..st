hooks
uninstallFrom: cls
	cls isTrait ifTrue: [ ^ self ].
	(newSlots at: cls ifAbsent: [^ self ]) do: #uninstall.
	newSlots removeKey: cls.
	((cls classWithMetaclass flatCollect: #withAllSubclasses) asSet flatCollect: #methods) 
		do: [ :m | m hasInstVarRef ifTrue: [ m recompile ] ].