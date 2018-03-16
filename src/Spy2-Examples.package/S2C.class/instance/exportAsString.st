public - exporting
exportAsString

	| w relevantMethods |
	w := WriteStream on: String new.

	relevantMethods := self allMethods select: [ :m | m count > 0 ].
	relevantMethods do: [ :spyMethod |
		w nextPutAll: spyMethod classSpy superclass className.
		w nextPutAll: ','.
		w nextPutAll: spyMethod packageSpy packageName.
		w nextPutAll: ','.
		w nextPutAll: spyMethod classSpy className.
		w nextPutAll: ','.
		w nextPutAll: spyMethod selector.
		w nextPutAll: ','.
		w nextPutAll: spyMethod count asString.
		w cr.
	].
	w close.
	^ w contents
	