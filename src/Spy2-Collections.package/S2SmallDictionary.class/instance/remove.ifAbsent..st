as yet unclassified
remove: oldObject ifAbsent: anExceptionBlock 
	self removeKey: oldObject key ifAbsent: anExceptionBlock.
	^oldObject