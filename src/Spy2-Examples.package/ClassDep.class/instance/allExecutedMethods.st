visualization
allExecutedMethods
	| r |
	r := Set new.
	depFrames do: [ :depF |
		r addAll: depF allMethods ].
	^ r