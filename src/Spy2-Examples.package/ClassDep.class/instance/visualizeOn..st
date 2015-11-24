visualization
visualizeOn: view

	| c |
	c := RTComposer new.
	c gap: 35.
	c view: view.
	depFrames do: [ :f | 
		f visualizeOn: view.
		c group: f hash asString.
	].
	c layout: RTCellLayout new.
	^ view


	"| dsm relevantClasses |
	relevantClasses := self allExecutedClasses asArray select: [ :c | (self dependenciesOfClass: c) size > 3 ].
	dsm := RTDSM new.
	dsm view: view. 
	dsm rotation: 0.
	dsm objects: relevantClasses.
	dsm dependency: [ :m  | self dependenciesOfClass: m ].
	dsm build.
	^ view "
	

	"| dsm |
	dsm := RTDSM new.
	dsm view: view.
	dsm rotation: 0.
	dsm objects: self allExecutedMethods asArray.
	dsm dependency: [ :m  | self dependenciesOfMethod: m ].
	dsm build.
	^ view"
	
	
"	b := RTMondrian new.
	b view: view.
	b nodes: self 
	b build."
