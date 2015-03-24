accessing
initialize

	super initialize.
	self beforeRunBlock: [ :selector :arguments :receiver :spyMethod | self ].
	self afterRunBlock: [ :selector :arguments :receiver :spyMethod | self ].
	self runWithInBlock: [ :selector :arguments :receiver :spyMethod | spyMethod superRun: selector with: arguments in: receiver ].
	self messageNotUnderstoodBlock: [ :message :profiler | S2TestException signal].
	behaviors := Dictionary new.