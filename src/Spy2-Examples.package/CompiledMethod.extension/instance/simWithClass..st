*Spy2-Examples-PMove
simWithClass: aClass
	"Compute the similarity between two methods, as described in the article 'Recommending Move Method Refactorings using Dependency Sets' @ WCRE'13"
	
	^ PMMoveMain sim: self withClass: aClass