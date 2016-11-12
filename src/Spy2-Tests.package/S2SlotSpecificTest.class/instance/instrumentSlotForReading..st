utils
instrumentSlotForReading: aSlot
	| class newSlot methods |
	self assert: aSlot isSpy not.
	class := aSlot definingClass.
	newSlot := S2Slot slotForReading
		profiler: self;
		originalSlot: aSlot;
		name: aSlot name;
		index: aSlot index;
		slotClass: class.
	methods := aSlot usingMethods.
	class classLayout replaceSlot: aSlot with: newSlot.
	methods do: #recompile