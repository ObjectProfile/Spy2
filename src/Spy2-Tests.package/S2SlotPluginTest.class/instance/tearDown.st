running
tearDown
	|classes|
	super tearDown.
	classes := S2SlotStubExample withAllSubclasses , S2SlotStubExample class withAllSubclasses.
	((classes flatCollect: #slots) select: #isSpy)
		do: #uninstall.
	(classes flatCollect: #methods) do: #recompile