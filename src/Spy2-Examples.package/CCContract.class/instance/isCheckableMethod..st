as yet unclassified
isCheckableMethod: aMethod
	^ self rules anySatisfy: [ :rule | rule method == aMethod ]