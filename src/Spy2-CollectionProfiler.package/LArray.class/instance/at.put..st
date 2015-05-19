as yet unclassified
at: index put: obj
	spyModel addMethodInvolved: self spyMethodInvolved.
	spyModel nbAtPut: spyModel nbAtPut + 1.
	^ super at: index put: obj