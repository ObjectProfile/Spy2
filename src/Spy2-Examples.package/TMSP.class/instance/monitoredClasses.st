accessing-computed
monitoredClasses
	| cc |
	cc := self allClasses.
	^ classesToTrack select: [ :c | cc anySatisfy: [ :spyClass | spyClass theClass == c ] ]