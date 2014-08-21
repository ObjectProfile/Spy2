actions
executeAction

	self session stepInto.
	self interruptedContext method isSpy ifFalse: [ ^ self ].
	self session stepInto.
	self interruptedContext selector = #run:with:in: ifFalse: [ ^ self ].
	self session 
		stepUntil: (self methodDeliveryPredicate) 
		from: self interruptedContext.
	self session stepInto.
	self session stepInto.