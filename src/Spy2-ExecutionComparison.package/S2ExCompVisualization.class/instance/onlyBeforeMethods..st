accessing
onlyBeforeMethods: someS2Methods
"	self assert: [ someS2Methods allSatisfy: [ :c | c class == S2ExCompMethod ] ]."
	onlyBeforeMethods := someS2Methods