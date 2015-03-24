initialization
initialize

	newMethods := OrderedCollection new.
	classSelectorBlock := [ :classes | self computeRoots: classes ]