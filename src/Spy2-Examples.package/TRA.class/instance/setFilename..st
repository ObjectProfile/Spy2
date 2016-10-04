as yet unclassified
setFilename: fullFileName
	stream := fullFileName asFileReference writeStream.
	
	stream
		nextPutAll: 'numberOfExecutions';

		nextPut: $,;
		nextPutAll: 'Revision';

		nextPut: $,;
		nextPutAll: 'methodName';

		nextPut: $,;
		nextPutAll: 'receiver';

		nextPut: $,;
		nextPutAll: 'Arguments';

		nextPut: $,;
		nextPutAll: 'NbOfArguments';

		nextPut: $,;
			nextPutAll: 'ReceiverClass';

		nextPut: $,;
			nextPutAll: 'MethodClass';
	
		crlf