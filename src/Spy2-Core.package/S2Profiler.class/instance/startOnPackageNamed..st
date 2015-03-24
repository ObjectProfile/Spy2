start-stop profiling
startOnPackageNamed: packageName
	(S2Instrumentator onPackageNamed: packageName) applyOn: self