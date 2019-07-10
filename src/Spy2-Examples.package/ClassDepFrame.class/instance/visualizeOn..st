visualization
visualizeOn: view
	"| dsm |
	dsm := RTDSM new.
	dsm view: view.
	dsm rotation: -50.
	dsm objects: self relevantClasses.
	dsm dependency: [ :m | self dependenciesOfClass: m ].
	dsm build.
	^ view"