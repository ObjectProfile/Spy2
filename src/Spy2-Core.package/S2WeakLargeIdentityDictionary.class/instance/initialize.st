as yet unclassified
initialize

	tally := 0.
	items := (1 to: 4096) collect: [ :i | S2NullLargeTableItem uniqueInstance ]