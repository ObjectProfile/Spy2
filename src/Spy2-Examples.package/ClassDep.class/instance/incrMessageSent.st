util
incrMessageSent
	numberOfMessages := numberOfMessages + 1.
	self shouldCreateNewFrame
		ifTrue: [ self createNewDepFrame ]