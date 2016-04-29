accessing - computed
allRelevantMethods
	"Return all the methods for which it make sense to say if it is covered or not."
	^ self allMethods reject: #isAbstract