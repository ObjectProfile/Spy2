util
nonDangerousClasses
	^ Smalltalk allClasses select: [:cls | S2Profiler isNotDangerous: cls ]