as yet unclassified
asDraggableMorph
	^ (S2String streamContents: [ :s| 
		self 
			do: [ :each | s print: each ]
			separatedBy: [ s space ]]) asStringMorph