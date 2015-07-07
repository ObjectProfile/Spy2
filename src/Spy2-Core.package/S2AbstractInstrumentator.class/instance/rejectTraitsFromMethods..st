utils
rejectTraitsFromMethods: methodCollection
	^ methodCollection reject: [ :m | m methodClass isTrait ]