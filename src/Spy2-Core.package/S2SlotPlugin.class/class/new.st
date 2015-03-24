instance creation
new
	S2Profiler hasSlots ifFalse: [ Error signal: 'You need Pharo4 image to use slots.' ].
	^ super new 