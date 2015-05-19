as yet unclassified
percentageOfElementsToReach80OfTheSum
	"Return the % of elements for which the sum reach 80 of the total sum"
	
	"
	#(1 2 3 4 10) percentageOfElementsToReach80OfTheSum = 60 
	#(1 2 3 4 1000) percentageOfElementsToReach80OfTheSum = 20 
	#(1 2 3 4 500 1000) percentageOfElementsToReach80OfTheSum = 33.3 
	"

	^ (self amountOfElementsToReach80OfTheSum * 100 / self size) asFloat