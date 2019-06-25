utilities
request
	| res |
	res := UIManager default 
		request: 'Enter a pattern of a class (e.g., RSView, *View*)' 
		initialAnswer: self lastUserInput
		title: 'Enter the name of a class to measure the coverage'.
	res ifNotNil: [ userInput := res ].
	^ res