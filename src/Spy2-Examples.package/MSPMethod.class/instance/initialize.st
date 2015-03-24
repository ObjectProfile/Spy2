initialization
initialize
	super initialize.
	counting := Dictionary new.
	callingMethods := Set new.
	calledMethods := Set new.
	alreadyCheckedMethods := OrderedCollection new.
	numberOfExecutions := 0
	