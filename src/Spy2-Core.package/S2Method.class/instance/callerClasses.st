accessing - computed
callerClasses
	"really slow method"
	| sender callers |
	sender := thisContext sender sender sender.
	callers := OrderedCollection new.
	[sender notNil] whileTrue: [ callers add: sender methodClass. sender := sender sender.].
	^ callers