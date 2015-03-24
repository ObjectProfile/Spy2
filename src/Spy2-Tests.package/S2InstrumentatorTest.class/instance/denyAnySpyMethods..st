utils
denyAnySpyMethods: methodsClassesOrPackages
	"Receives almost anything and ensure nothing is or has a spy method:
		Class
		Collection of Classes
		Method
		Collection of Methods
		Package
		Collection of Packages"
	(methodsClassesOrPackages isCollection and: [ methodsClassesOrPackages isCompiledMethod not ])
		ifTrue: [ 
			methodsClassesOrPackages do: [ :elem |
				self denySingleAnySpyMethod: elem.
				]
			 ]
		ifFalse: [ 
				self denySingleAnySpyMethod: methodsClassesOrPackages
			 ]