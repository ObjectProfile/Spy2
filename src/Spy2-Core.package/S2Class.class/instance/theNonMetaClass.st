accessing - computed
theNonMetaClass 
	"Return the non metaclass spy for the receiver"
	
	self isMeta ifFalse: [ ^ self ].
	^ self packageSpy >> self nonMetaClassName