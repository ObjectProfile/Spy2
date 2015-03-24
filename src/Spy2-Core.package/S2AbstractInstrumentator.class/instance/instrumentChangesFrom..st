private - action
instrumentChangesFrom: oldInstrumentator
	self uninstallFromMethods: (oldInstrumentator methods difference: self methods).
	self uninstallFromClasses: (oldInstrumentator classes difference: self classes).
	oldInstrumentator isVoidInstrumentator 
		ifTrue: [ 
			self profiler beforeInstalling.
			self installProfilerPlugins ].
	self instrumentClasses: (self classes difference: oldInstrumentator classes).
	self instrumentMethods: (self methods difference: oldInstrumentator methods).
	oldInstrumentator isVoidInstrumentator 
		ifTrue: [ self profiler beforeProfiling ].