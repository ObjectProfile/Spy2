algorithm
isClassEligible: cls
	| spyClass |
	spyClass := self profiler getSpyClass: cls.
	spyClass ifNil: [ ^ false ].
	^ spyClass hasRatioOfExecutedMethodsGreaterthan: 0.75