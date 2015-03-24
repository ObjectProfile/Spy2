hooks
installOn: classes
	(self classSelectorBlock value: classes) do: [ :cls | 
		cls methodDict  
			at: selector 
			ifAbsent: [ cls compile: behaviorCode.
							newMethods add: (cls >> selector) ] ].
	^ classes