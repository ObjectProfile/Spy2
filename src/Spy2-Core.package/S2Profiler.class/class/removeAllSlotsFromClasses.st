util
removeAllSlotsFromClasses
	Smalltalk allClasses do: [ :cls | 
		(cls slots , cls class slots select: #isSpy) do: #uninstall ]