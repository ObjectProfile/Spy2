*Spy2-Hapao-Visualization
color
	"Return the color of a method. If the method is a test method, then say whether is has passed or not. Else return the number of executions"
	^ self isTest 
		ifTrue: [ self colorForTestResult ]
		ifFalse: [ self callsForColor ]
	