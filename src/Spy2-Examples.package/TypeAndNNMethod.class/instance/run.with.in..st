hooks
run: methodName with: listOfArguments in: receiver 
	| result |
	numberOfExecutions := numberOfExecutions + 1.
	result := super run: methodName with: listOfArguments in: receiver.
	types add: (Array with: receiver class), (listOfArguments collect: #class),  (Array with: result class).
	^ result