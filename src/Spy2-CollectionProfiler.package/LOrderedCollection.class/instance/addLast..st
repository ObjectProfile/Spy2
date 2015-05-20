as yet unclassified
addLast: elem
	spyModel addMethodInvolved: self spyMethodInvolved.
	spyModel nbAdd: spyModel nbAdd + 1.
	^ super addLast: elem