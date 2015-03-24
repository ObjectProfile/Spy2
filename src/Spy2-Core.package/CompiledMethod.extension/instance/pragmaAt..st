*Spy2-Core-AccessingPragmas
pragmaAt: aKey
	"Answer the pragma with selector aKey, or nil if none."
	| propertiesOrSelector |
	self isSpy ifFalse: 
		[ ^(propertiesOrSelector := self penultimateLiteral) isMethodProperties
			ifTrue: [propertiesOrSelector at: aKey ifAbsent: [nil]]
			ifFalse: [nil] ].
	self methodClass == S2Profiler class ifTrue: [ ^ #() ].
	^ self originalMethod pragmaAt: aKey
		