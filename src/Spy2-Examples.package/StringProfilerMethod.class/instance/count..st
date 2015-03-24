counting
count: string

	set add: string.
	sem critical: [ counter := counter + 1 ]