hooks
initialize
	super initialize.
	numberOfExecutions := 0.
	callingMethods := Set new.
	calledMethods := Set new.