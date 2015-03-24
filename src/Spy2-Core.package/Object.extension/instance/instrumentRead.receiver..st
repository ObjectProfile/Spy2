*Spy2-Core
instrumentRead: spySlot receiver: obj
	[spySlot profiler readOn: spySlot receiver: obj withValue: self] spyProtected