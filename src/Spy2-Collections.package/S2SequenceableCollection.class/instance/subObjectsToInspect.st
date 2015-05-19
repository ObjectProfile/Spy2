as yet unclassified
subObjectsToInspect
	| element |
	
	element := self collect:[ :e | e ].

	^ super subObjectsToInspect, element