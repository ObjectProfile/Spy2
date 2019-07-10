visualization
visualizeOn: view
	"This is a generated visualization"

	"| relevantMethods allExecutedClasses b |
	relevantMethods := self allMethods select: [ :m | m count > 0 ].
	allExecutedClasses := (relevantMethods collect: #classSpy) asSet.
	allExecutedClasses
		ifEmpty: [ view add: (RTLabel elementOn: 'You need to run the application').
			^ self ].
	
	b := RTMondrian new.
	b view: view.
	b
		nodes: allExecutedClasses
		forEach: [ :cls | 
			b shape box size: [ :m | m count log * 10 ].
			b nodes: (cls allMethods select: [ :m | m count > 0 ]).
			b layout grid ].
	b edges connectFrom: #superclass.
	b normalizer
		objects: relevantMethods;
		normalizeColor: [ :m | m count sqrt ].
	b layout tree.
	b build"