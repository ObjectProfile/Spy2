comparison
isNotNewMethod
	"Return true if the same method was in the last profile"
	| lp cls |
	self assert: [ self profiler isReadyForComparison ] description: 'Cannot be compared, need to send #setForComparison to a profile'.
	
	lp := self profiler lastProfile.
	cls := lp classAt: self classSpy className ifNone: [ ^ false ].
	^ cls hasMethodNamed: self selector