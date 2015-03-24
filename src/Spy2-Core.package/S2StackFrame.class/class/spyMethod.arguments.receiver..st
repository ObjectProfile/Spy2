instance creation
spyMethod: aMethod arguments: arguments receiver: receiver

	^ self new
		spyMethod: aMethod;
		arguments: arguments;
		receiver: receiver;
		yourself