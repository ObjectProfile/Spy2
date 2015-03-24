utils
writeOn: spySlot receiver: obj fromValue: oldValue toValue: newValue
	writeBlock cull: spySlot cull: obj cull: oldValue cull: newValue