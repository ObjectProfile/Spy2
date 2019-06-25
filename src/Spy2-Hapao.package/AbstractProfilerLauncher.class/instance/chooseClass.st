utilities
chooseClass 
	| index clss |
	clss := self lastClasses.
	clss ifEmpty: [ 
		self emptyLastClasses.
		 ^ nil.].
	index := UIManager default chooseFrom: clss.
	index = 0 ifTrue: [ ^ nil ].
	^ clss at: index.