predicates
methodDeliveryPredicate
	^ self session createPredicateForBlock: [ :aContext |
		aContext selector = #valueWithReceiver:arguments:  ]