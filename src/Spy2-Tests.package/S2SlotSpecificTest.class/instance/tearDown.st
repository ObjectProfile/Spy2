running
tearDown
	super tearDown.
	((S2SlotStubExample withAllSubclasses flatCollect: #slots) select: #isSpy)
		do: #uninstall.
	(S2SlotStubExample withAllSubclasses flatCollect: #methods) do: #recompile