as yet unclassified
allCalledMethods
	| visitedMethods |
	visitedMethods := Set new.
	self allCalledMethod: visitedMethods.
	^ visitedMethods