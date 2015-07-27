as yet unclassified
at: key
	self at: key ifAbsent: [ self errorKeyNotFound: key ]