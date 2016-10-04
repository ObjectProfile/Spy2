hooks
beforeRun: methodName with: listOfArguments in: receiver
	"This method is executed before each method of the profiled application.
	 Insert here the instrumentation you would like to perform during the profiling."
	numberOfExecutions := numberOfExecutions + 1.
	self profiler stream 
		nextPutAll: numberOfExecutions asString;

		nextPut: $,;
		nextPutAll: self profiler revision asString;


"		nextPut: $,;
		nextPutAll: methodName;"

		nextPut: $,;
		nextPutAll: methodName identityHash asString;

		nextPut: $,;
		nextPutAll: (receiver identityHash + receiver class identityHash) asString;

		nextPut: $,;
		nextPutAll: (listOfArguments collect: #identityHash) hash asString;

		nextPut: $,;
		nextPutAll: (listOfArguments size asString);

	nextPut: $,;
		nextPutAll: ((receiver class identityHash + receiver class class identityHash) asString);

	nextPut: $,;
		nextPutAll: ((self classSpy className identityHash + self classSpy class className identityHash) asString);

	crlf