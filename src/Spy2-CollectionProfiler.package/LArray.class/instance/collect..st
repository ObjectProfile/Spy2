as yet unclassified
collect: aBlock
	spyModel addMethodInvolved: self spyMethodInvolved.
	spyModel nbCollect: spyModel nbCollect + 1.
	^ super collect: aBlock