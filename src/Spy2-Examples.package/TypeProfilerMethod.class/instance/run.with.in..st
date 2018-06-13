hooks
run: methodName with: listOfArguments in: receiver
	| v |
	[ 
		S2Lock unlock.
		v := originalMethod valueWithReceiver: receiver arguments: listOfArguments.
		types ifNil:[ 
			self buildTypes: (listOfArguments, (Array with: v)).
		] ifNotNil: [ 
			self mergeTypes: (listOfArguments, (Array with: v)).
		].
		
		
	] ensure: [ 
		S2Lock lock.
	].
	^ v