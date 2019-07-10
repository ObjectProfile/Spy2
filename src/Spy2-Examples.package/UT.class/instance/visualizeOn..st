visualization
visualizeOn: view
	"| b |
	b := RTMondrian new.
	b view: view.
	
	b nodes: self executedClasses forEach: [ :cls |
		b shape rectangle
			if: #hasBeenDirectlyTested fillColor: Color green;
			if: [ :m | m isOnlyInvokedOnMyself and: [ m hasBeenDirectlyTested ] ] fillColor: Color orange;
			if: #isUndertested fillColor: Color red.
		b nodes: cls executedMethods.
		b edges connectToAll: #outgoingCalls.		
		b layout tree.
	].
	b edges connectFrom: #superclass.
	b layout tree.
	b build"