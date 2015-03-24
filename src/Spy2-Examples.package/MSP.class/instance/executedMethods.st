accessing
executedMethods
	"Return the list of methods that have been executed"
	^ self allMethods select: #hasBeenExecuted