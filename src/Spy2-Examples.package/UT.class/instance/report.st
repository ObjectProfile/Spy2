report
report
	| s |
	s := WriteStream on: String new.
	s nextPutAll: self allClasses size printString, ' analyzed classes'; cr.
	s nextPutAll: self executedClasses size printString, ' executed classes'; cr.
	s cr.

	s nextPutAll: self allMethods size printString, ' analyzed methods'; cr.
	s nextPutAll: self executedMethods size printString, ' executed methods'; cr.
	s nextPutAll: ((self executedMethods size / self allMethods size * 100) round: 2) printString, ' % covered methods'; cr.

	s cr.
	s nextPutAll: (self executedMethods select: #isUndertested) size printString, ' undertested methods'.

	^ s contents