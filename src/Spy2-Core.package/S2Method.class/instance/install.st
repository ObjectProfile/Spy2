installing
install
	"We do nothing if the method has been supressed"
	(self theClass methodDict includesKey: self selector) ifFalse: [ ^ self ].

	self assert: [ (self theClass methodDict at: self selector) isSpy not ].
	self assert: [ self originalMethod notNil ].
	self assert: [ self instrumentedMethod notNil ].
	self flushCache.
	
	"We update the original method, it may have changed since the uninstall"
	originalMethod := self theClass methodDict at: self selector.
	self theClass methodDict at: self selector put: self instrumentedMethod.
	