util
uninstall 
	(self slotClass layout slotScope indexOf: self) = 0 ifFalse: 
		 [ self slotClass layout replaceSlot: self with: self originalSlot ]