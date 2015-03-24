utils
pharoClassesOfPackages: packageNames
	^ packageNames flatCollect: [ :pName | (self packageForName: pName) classes ]