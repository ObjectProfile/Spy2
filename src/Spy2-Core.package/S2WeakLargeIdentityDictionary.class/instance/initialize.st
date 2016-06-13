as yet unclassified
initialize

	tally := 0.
	items := (1 to: self capacity) collect: [ :i | S2NullLargeTableItem uniqueInstance ]