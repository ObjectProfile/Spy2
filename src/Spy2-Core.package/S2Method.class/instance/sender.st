accessing - computed
sender
	| context|
	context := thisContext.
	[ context sender method isSpy ] whileFalse: [ context := context sender ].
	^ context sender sender method