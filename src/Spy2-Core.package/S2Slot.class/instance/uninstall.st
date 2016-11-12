util
uninstall
	(self slotClass classLayout slotScope indexOf: self) = 0
		ifFalse: [ self slotClass classLayout replaceSlot: self with: self originalSlot ]