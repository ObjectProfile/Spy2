*Spy2-Hapao-Visualization
lastClasses: size
	| index res |
	index := methodReferenceList size.
	res := OrderedCollection new.
	[index > 0 and: [ res size < size ]] whileTrue: [
		| class |
		class := (methodReferenceList at: index) methodClass.
		(res includes: class) ifFalse: [ res add: class ].
		index := index -1 ].
	^ res