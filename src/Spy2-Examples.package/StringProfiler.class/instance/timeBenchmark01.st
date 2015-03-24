examples
timeBenchmark01
	"
	self new benchmark01
	"
	^
	[ StringProfiler profile: [ (self gatherForPackage: (self packageForName: 'Roassal2')) do: [:cm | RBParser parseMethod: cm getSource ] ] onPackagesMatching: 'AST*'. ] timeToRun 
	/ 
	[ (self gatherForPackage: (self packageForName: 'Roassal2')) do: [:cm | RBParser parseMethod: cm getSource ] ] timeToRun