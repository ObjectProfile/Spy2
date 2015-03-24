accessing - computed
allOutgoingCallsInSameClass
	^ self allOutgoingCalls select: [ :spyMethod | spyMethod classSpy == self classSpy ]