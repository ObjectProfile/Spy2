accessing
allExecutedClasses
	| r |
	r := Set new.
	depFrames do: [ :depF |
		r addAll: depF allClasses ].
	^ r