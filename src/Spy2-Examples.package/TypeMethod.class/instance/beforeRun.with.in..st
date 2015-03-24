hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	arguments ifNil: [ arguments := ((1 to: listOfArguments size) collect: [ :i | Set new ]) asArray. ].
	arguments with: listOfArguments do:  [ :typeSet :arg | typeSet add: arg class ].
	numberOfExecutions := numberOfExecutions + 1