visualization
visualizeOn: view

	| dsm relevantClasses |
	relevantClasses := self allClasses asArray select: [ :c | (self dependenciesOfClass: c) size > 0 ].
	dsm := RTDSM new.
	dsm view: view. 
	dsm rotation: -50.
	dsm objects: relevantClasses.
	dsm dependency: [ :m  | self dependenciesOfClass: m ].
	dsm build.
	^ view 
	