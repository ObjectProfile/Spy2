testing
isUndertested
	^ self isOnlyInvokedOnMyself and: [ 
	  self classSpy hasSubclasses and: [ 
	  self hasBeenExecuted and: [ 
	  self hasBeenDirectlyTested  ] ] ]