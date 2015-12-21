util
dependenciesOfClass: class
	^ classDependencies select: [ :assoc | assoc key == class ] thenCollect: #value