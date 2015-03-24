hooks
returnValue: aValue
	result ifNil: [ result := Set new ].
	result add: aValue class