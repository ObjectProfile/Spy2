public - profiling
profile: aBlock onClasses: aClassCollection
	"Execute aBlock while monitoring a list of classes "
	^ self new profile: aBlock onClasses: aClassCollection