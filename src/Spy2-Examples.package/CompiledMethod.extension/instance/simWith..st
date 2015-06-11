*Spy2-Examples-PMove
simWith: m
	"Compute the similarity between two methods, as described in the article 'Recommending Move Method Refactorings using Dependency Sets' @ WCRE'13"
	
	^ PMMoveMain methodSim: self with: m