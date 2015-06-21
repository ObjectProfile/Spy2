algorithm
isClassEligible: cls
	"A class is eligible to be analyed if its coverage is above 0.75 or (if its uncovered methods do not call the called methods)"
	| spyClass |
	spyClass := self profiler getSpyClass: cls.
	spyClass ifNil: [ ^ false ].
	^ (spyClass hasRatioOfExecutedMethodsGreaterthan: 0.75) or: [ spyClass nonExecutedMethodDoNotCallExecutedMethods ]