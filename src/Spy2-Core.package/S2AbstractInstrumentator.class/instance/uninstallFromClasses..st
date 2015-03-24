private - action
uninstallFromClasses: ringClasses 
	self classPlugins reverse ensureDo: [:plugin | 
		ringClasses do: [ :ringClass | | cls |
			cls := ringClass realClass.
			cls isNotNil ifTrue: [ 
				plugin uninstallFrom: cls ] ] ]