accessing - computed
downwardLookupMethodsNamed: aSelector
	^ (self allSubclasses select: [:cls | cls hasMethodNamed: aSelector])
			collect: [:cls | cls localMethodAt: aSelector ]
		