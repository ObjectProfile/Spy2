accessing - computed
nonMetaClassName
	^ (self isMeta
		ifTrue: [ self className copyFrom: 1 to: ((self className indexOf: $ ) - 1)] 
		ifFalse: [ self className ]) asSymbol