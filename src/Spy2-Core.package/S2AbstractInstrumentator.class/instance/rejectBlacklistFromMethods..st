utils
rejectBlacklistFromMethods: methodCollection
	^ self rejectTraitsFromMethods: (methodCollection difference: self class methodBlacklist)