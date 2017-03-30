counting
increment: anInteger
	|value|
	mutex critical: [ 
		count := count + anInteger.
		value := count ].
	^ value