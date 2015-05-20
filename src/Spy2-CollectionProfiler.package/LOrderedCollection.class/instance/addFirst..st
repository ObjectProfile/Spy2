as yet unclassified
addFirst: newObject 
	spyModel addMethodInvolved: self spyMethodInvolved.
	spyModel nbAdd: spyModel nbAdd + 1.
	^ super addFirst: newObject 