as yet unclassified
execute
	profiler 
		profile: [ methodsSources do: [ :m | RBParser parseMethod: m ] ] 
		onPackageNamed: 'AST-Core'