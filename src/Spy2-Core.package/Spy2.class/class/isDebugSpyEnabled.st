as yet unclassified
isDebugSpyEnabled
	^ DebugSpyFlag ifNil: [ DebugSpyFlag := false ]