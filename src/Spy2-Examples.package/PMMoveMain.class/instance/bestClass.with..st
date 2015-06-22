algorithm
bestClass: m with: classes
	| t |
	t := classes sortedAs: [ :c1 :c2 | (self sim: m withClass: c1) > (self sim: m withClass: c2) ].
	^ t detect: [ :c | ((c canUnderstand: m selector) not) and: [ c isTestCase not ] ] ifNone: [ nil ]