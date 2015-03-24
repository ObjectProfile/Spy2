hooks
run: methodName with: listOfArguments in: receiver
	| v |
	[ 
		S2Lock unlock.
		v := originalMethod valueWithReceiver: receiver arguments: listOfArguments.
	] ensure: [ 
		S2Lock lock.
	].
	^ v