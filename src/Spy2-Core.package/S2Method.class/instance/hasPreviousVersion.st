comparison
hasPreviousVersion
	
	| lp cls |
	lp := self profiler lastProfile.
	cls := lp classAt: self classSpy className ifNone: [ ^ false ].
	^ cls hasMethodNamed: self selector