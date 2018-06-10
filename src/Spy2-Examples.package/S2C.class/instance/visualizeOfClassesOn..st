as yet unclassified
visualizeOfClassesOn: view
	"This is a generated visualization"

	| relevantMethods allExecutedClasses b |
	relevantMethods := self allMethods select: [ :m | m count > 0 ].
	allExecutedClasses := (relevantMethods collect: #classSpy) asSet.
	allExecutedClasses
		ifEmpty: [ view add: (RTLabel elementOn: 'You need to run the application').
			^ self ].
	
	b := RTMondrian new.
	b view: view.
	b
		nodes: allExecutedClasses.
	b edges connectFrom: #superclass.
	b normalizer
		objects: allExecutedClasses;
		normalizeColor: [ :c | self numberOfKbUsedByClass: c theClass ];
		normalizeSize: [ :c | self numberOfInstancesOfClass: c theClass ]..
	b layout tree.
	b build