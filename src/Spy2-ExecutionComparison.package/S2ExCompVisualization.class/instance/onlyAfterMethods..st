accessing
onlyAfterMethods: someS2Methods
"	self assert: [ someS2Methods allSatisfy: [ :c | c class == S2ExCompMethod ] ]."
	onlyAfterMethods := someS2Methods