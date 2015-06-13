hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	| caller |
	caller := self spySender.
	caller ifNotNil: [ caller addDependentClass: self methodClass ].
	dependentClasses addAll: ((listOfArguments collect: #class) collect: #theNonMetaClass)