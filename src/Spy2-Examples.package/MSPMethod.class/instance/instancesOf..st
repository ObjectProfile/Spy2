accessing
instancesOf: aClass
	^ counting at: aClass ifAbsent: [ 0 ]