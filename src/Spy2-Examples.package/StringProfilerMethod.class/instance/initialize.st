initialization
initialize

	sem := Semaphore forMutualExclusion.
	counter := 0.
	timesExecuted := 0.
	set := Set new.