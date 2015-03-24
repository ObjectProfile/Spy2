utils
assertAllSpyMethods: methodsClassesOrPackages
	"Receives almost anything and ensure is a spy method or has only spy methods
		Class
		Collection of Classes
		Method
		Collection of Methods
		Package
		Collection of Packages"
	(methodsClassesOrPackages isCollection and: [ methodsClassesOrPackages isCompiledMethod not ])
		ifTrue: [ 
			methodsClassesOrPackages do: [ :elem |
				self assertSingleAllSpyMethod: elem.
				]
			 ]
		ifFalse: [ 
				self assertSingleAllSpyMethod: methodsClassesOrPackages
			 ]