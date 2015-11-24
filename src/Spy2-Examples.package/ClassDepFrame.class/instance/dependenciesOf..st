accessing
dependenciesOf: method
	^ methodDependencies select: [ :assoc | assoc key == method ] thenCollect: #value