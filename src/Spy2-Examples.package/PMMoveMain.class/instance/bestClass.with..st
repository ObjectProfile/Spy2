algorithm
bestClass: m with: classes
	| t |
	t := classes sortedAs: [ :c1 :c2 | (self sim: m withClass: c1) > (self sim: m withClass: c2) ].
	^ t first