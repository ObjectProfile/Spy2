as yet unclassified
linkOf: anObject ifAbsent: errorBlock 
	
	self
		linksDo: [:el | el value = anObject
				ifTrue: [^ el]].
	^ errorBlock value