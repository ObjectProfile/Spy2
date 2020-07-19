initialization
withdraw: withdrawAmount
	withdrawAmount > balance
		ifTrue: [ self error ]
		ifFalse: [ balance := balance - withdrawAmount ]