as yet unclassified
capacity: anInteger loadfactor: aFloat
	| size table |
	size := (anInteger / aFloat) asInteger.
	table := S2Array new: size.
	^ super new
		capacity: anInteger;
		setLoadfactor: aFloat;
		table: table;
		yourself.