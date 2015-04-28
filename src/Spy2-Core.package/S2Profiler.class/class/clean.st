util
clean
	self removeAllTemplates.
	self hasSlots ifTrue: [self cleanSlots].