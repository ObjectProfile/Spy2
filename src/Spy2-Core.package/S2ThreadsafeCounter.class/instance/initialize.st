initializing
initialize
	super initialize.
	mutex := Mutex new.
	count := 0