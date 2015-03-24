util
removeFromClass: cls

	| instrumentedSlots |
	cls methods do: [ :m | 
		m isSpy ifTrue: [ 
			m methodClass methodDict 
				at: m selector 
				put: m originalMethod ] ].
	cls class methods do: [ :m | 
		m isSpy ifTrue: [ 
			m methodClass methodDict 
				at: m selector 
				put: m originalMethod ] ].
	"Remove slots"
	self hasSlots ifTrue: [ 
		instrumentedSlots := (cls slots select: #isSpy) , (cls class slots select: #isSpy).
		instrumentedSlots ifNotEmpty: [ 
			instrumentedSlots do: #uninstall.
			((cls withAllSubclasses flatCollect: [ :c | { c . c class } ]) flatCollect: #methods) do: #recompile ].
		cls methods , cls class methods do: [ :method |
			method hasSpySlot ifTrue: [ method recompile ] ] ].