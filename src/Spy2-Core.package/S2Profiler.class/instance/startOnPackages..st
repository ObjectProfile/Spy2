start-stop profiling
startOnPackages: packageCollection
	(S2Instrumentator onPackages: packageCollection) applyOn: self.