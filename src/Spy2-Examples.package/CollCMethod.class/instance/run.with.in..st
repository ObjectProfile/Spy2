hooks
run: methodName with: listOfArguments in: receiver	
	| v contract isCheackable rule snapshot newSnapshot |
	[ 
		S2Lock unlock.
		contract := self profiler contract.
		isCheackable := contract isCheckableMethod: originalMethod.
		isCheackable ifTrue: [ 
			rule := contract ruleFor: originalMethod. 
			snapshot := rule valueForReceiver: receiver ].
		v := originalMethod valueWithReceiver: receiver arguments: listOfArguments.
		isCheackable ifTrue: [ 
			newSnapshot := rule valueForReceiver: receiver.
			rule increaseEvaluationCounter.
			listOfArguments first isCollection 
				ifTrue: [ 
					self 
						assert: [ newSnapshot size = (snapshot size + (listOfArguments first size)) ] 
						description: 'Contract broken!' ]
				ifFalse: [ 
					 self 
						assert: [ newSnapshot size = (snapshot size + 1) ] 
						description: 'Contract broken!' ] ].

	] ensure: [ 
		S2Lock lock.
	].
	^ v