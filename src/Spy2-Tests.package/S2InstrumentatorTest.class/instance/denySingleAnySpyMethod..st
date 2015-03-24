utils
denySingleAnySpyMethod: elem
	elem isCompiledMethod 
					ifTrue: [ 
						self deny: elem isSpy ]
					ifFalse: [
						elem methods do: [ :method |
							self deny: method isSpy ] ]