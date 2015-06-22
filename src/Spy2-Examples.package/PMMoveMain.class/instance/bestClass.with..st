algorithm
bestClass: m with: classes
	| t bestClass |
	t := classes sortedAs: [ :c1 :c2 | (self sim: m withClass: c1) > (self sim: m withClass: c2) ].
	
	bestClass := t 
					detect: [ :c | ((c canUnderstand: m selector) not) and: [ (self profiler getSpy: m) incomingClasses includes: c ] ] 
					ifNone: [ nil ].
	bestClass ifNotNil: [ ^ bestClass ].
	
	^ t detect: [ :c | ((c canUnderstand: m selector) not) and: [ c isTestCase not ] ] ifNone: [ nil ]