hooks
installOn: class
	| slotsForCls |
	class isTrait ifTrue: [ ^ self ].
	slotsForCls := OrderedCollection new.
	newSlots at: class put: slotsForCls.
	{class . class class} do: [ :cls |
		cls slots do: [ :slot | 
			| newSlot |
			self 
				assert: [ slot isSpy not ] 
				description: 'Trying to instrument an already instrumented slot.'.
			newSlot := self prototype
					profiler: self profiler;
					originalSlot: slot;
					name: slot name;
					index: slot index;
					slotClass: cls. 
			slotsForCls add: newSlot.
			cls layout replaceSlot: slot with: newSlot
		 ] ].
	(({class . class class} flatCollect: #withAllSubclasses) asSet flatCollect: #methods) 
		do: [ :m | m hasInstVarRef ifTrue: [ m recompile ] ].
	^ class