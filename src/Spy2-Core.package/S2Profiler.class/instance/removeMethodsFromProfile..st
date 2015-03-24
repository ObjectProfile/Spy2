instrumentator - removing
removeMethodsFromProfile: methods
	(self instrumentator removeMethods: methods) applyOn: self