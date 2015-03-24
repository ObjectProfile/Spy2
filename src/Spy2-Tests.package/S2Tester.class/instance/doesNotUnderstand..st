accessing
doesNotUnderstand: aMessage
	| block |
	block := behaviors 
					at: aMessage selector 
					ifAbsent: [ ^ self messageNotUnderstoodBlock cull: aMessage cull: self ].
	^ block valueWithArguments: aMessage arguments , { self }