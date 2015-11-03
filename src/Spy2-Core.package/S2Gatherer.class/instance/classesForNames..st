as yet unclassified
classesForNames: nameCollection
	^ nameCollection collect: [ :n | self classForName: n ]