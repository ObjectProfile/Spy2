hooks
run: methodName with: listOfArguments in: receiver
	| old v new |
	old := self profiler counting copy.
	v := super run: methodName with: listOfArguments in: receiver.
	new := self profiler counting.
	
	new associationsDo: [ :assoc |
		counting 
			at: assoc key 
			put: ((counting at: assoc key ifAbsent: [ 0 ]) 
				+ (assoc value - (old at: assoc key ifAbsent: [ 0 ]))).
		(counting at: assoc key) = 0 ifTrue: [ counting removeKey: assoc key ]
	].
	
	^ v 