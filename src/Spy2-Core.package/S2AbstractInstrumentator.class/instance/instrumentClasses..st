private - action
instrumentClasses: ringClasses 
	self classPlugins do: [:plugin |
		ringClasses do: [ :ringClass | | cls |
			cls := ringClass realClass.
			(cls isNotNil and: [ cls isTrait not ]) ifTrue: [ plugin installOn: cls ].
			self profiler createSpy: cls ] ]