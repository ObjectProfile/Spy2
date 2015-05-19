as yet unclassified
includes: anObject 
	
	^(array at: (self scanFor: anObject))
		ifNil: [ false ]
		ifNotNil: [ :object | object ~~ flag ]