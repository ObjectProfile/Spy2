as yet unclassified
do: aBlock
	spyModel addMethodInvolved: self spyMethodInvolved.
	spyModel nbDo: spyModel nbDo + 1.
	^ super do: aBlock