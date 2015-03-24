*Spy2-Core
instrumentWrite: spySlot receiver: obj withValue: aValue
	[spySlot profiler writeOn: spySlot receiver: obj fromValue: aValue toValue: self] spyProtected