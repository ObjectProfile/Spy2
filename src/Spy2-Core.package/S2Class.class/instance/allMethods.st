accessing - computed
allMethods
	"Return spy methods for myself and my metaclass"
	self isMeta ifTrue: [ ^ self methods ].
	^ self methods , self metaclassSpy methods