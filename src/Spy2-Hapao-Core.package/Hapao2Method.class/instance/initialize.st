initialization
initialize
	super initialize.
	hasBeenExecuted := false.
	calls := 0.
	callers := Set new.
	testedMethods := Set new