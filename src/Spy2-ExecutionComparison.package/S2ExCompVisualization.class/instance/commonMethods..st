accessing
commonMethods: someS2ExCompMethods
	self assert: [ someS2ExCompMethods allSatisfy: [ :c | c class == S2ExCompMethod ] ].
	commonMethods := someS2ExCompMethods