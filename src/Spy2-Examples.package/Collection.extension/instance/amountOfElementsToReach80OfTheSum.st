*Spy2-Examples
amountOfElementsToReach80OfTheSum
	"Return the number of elements for which the sum reach 80 of the total sum"
	
	"
	#(1 2 3 4 10) amountOfElementsToReach80OfTheSum = 3 
	#(1 2 3 4 1000) amountOfElementsToReach80OfTheSum = 1
	#(1 2 3 4 500 1000) amountOfElementsToReach80OfTheSum = 2 
	"
	
	
	| nbElements c sum sum80 tt |
	nbElements := 0.
	c := self asSortedCollection reverse.
	sum := self sum.
	sum80 := (sum * 0.8) asInteger.
	tt := 0.
	c do: [ :i | 
		tt := tt + i.
		nbElements := nbElements + 1.
		(tt >= sum80) ifTrue: [ ^ nbElements ] ].
	^ 0