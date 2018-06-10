settings
resetCount
	self allMethods do: #resetCount.
	counting := Dictionary new.
	allObjects := IdentityDictionary new