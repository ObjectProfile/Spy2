utils
instrumentSlotForWriting: aSlot
	| class newSlot methods |
	self assert: aSlot isSpy not.
	class := aSlot definingClass.
	newSlot := S2Slot slotForWriting
			profiler: self;
		   originalSlot: aSlot;
			name: aSlot name;
			index: aSlot index;
			slotClass: class.
	methods := aSlot usingMethods.
	class layout replaceSlot: aSlot with: newSlot.
	methods do: #recompile