as yet unclassified
targetClass: c method: m
	| obj |
	obj := self new.
	obj targetClass: c.
	obj method: m.
	obj setComputeScore.
	^ obj