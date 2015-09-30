hooks
increase: spyMethod
	dictionary at: spyMethod ifAbsentPut: [ 0 ].
	dictionary at: spyMethod put: (dictionary at: spyMethod) + 1.