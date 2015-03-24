*Spy2-Examples
isStateEqual: anObject 
	self class == anObject class ifFalse: [ ^ false ].
	self doWithIndex: [:v :index|
		v == (anObject at: index) ifFalse: [ ^ false ]
		 ].
	^ true
"	^( value \\ 4096) + 1"