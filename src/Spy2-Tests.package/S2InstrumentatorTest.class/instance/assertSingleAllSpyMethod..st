utils
assertSingleAllSpyMethod: elem
	elem isCompiledMethod 
					ifTrue: [ 
						self assert: elem isSpy ]
					ifFalse: [
						elem methods do: [ :method |
							self assert: method isSpy ] ]