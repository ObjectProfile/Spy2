building presentations
retrieveStackFrom: aSession
	| filteredStack |

	filteredStack := OrderedCollection new.
	filteredStack add: aSession interruptedContext.
	aSession interruptedContext sender ifNotNil: [ :currentContext | 
		filteredStack addAll: (currentContext stack reject: [ :ctxt | 
			ctxt method isSpy or: [ 
				ctxt selector = #valueWithReceiver:arguments: or: [ 
					ctxt selector = #run:with:in: ] ] ])].
	^ filteredStack