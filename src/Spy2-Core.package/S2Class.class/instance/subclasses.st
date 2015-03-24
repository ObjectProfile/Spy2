accessing - computed
subclasses
	^ self profiler allClassesSuchThat: [:cls | cls superclass == self]