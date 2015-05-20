as yet unclassified
select: aBlock
	spyModel addMethodInvolved: self spyMethodInvolved.
	spyModel nbSelect: spyModel nbSelect + 1.
	^ super select: aBlock