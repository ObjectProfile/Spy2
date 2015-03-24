analysis
numberOfObjects

	| dict |
	dict := Dictionary new.
	self allClasses do: [ :spyCls |
		dict at: spyCls put: spyCls numberOfObjects ].
	^ dict