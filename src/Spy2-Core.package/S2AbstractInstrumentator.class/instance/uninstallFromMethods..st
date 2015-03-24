private - action
uninstallFromMethods: ringMethods
	ringMethods do: [ :ringMethod | | method |
		method := ringMethod compiledMethod.
		(method isNotNil and: [ method isSpy ]) ifTrue: [ | originalMethod |
				originalMethod := method originalMethod.
				originalMethod methodClass methodDictionary 
					at: originalMethod selector 
					put: originalMethod.
				originalMethod flushCache.
				self methodPlugins reverse ensureDo: [:plugin | 
					plugin uninstallFrom: ringMethod compiledMethod ].
			 ].
		 ]
	