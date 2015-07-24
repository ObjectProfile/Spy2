examples
example06

	"This example identifies the methods that produces the most instances of Roassal"
	
	"
	self new example06
	"
	^ (TMSP new
			keepTrackOfInstancesOfPackages: #( 'Roassal2' 'Trachel' );
		profile: [| b ds |
b := RTGrapher new.
b extent: 400 @ 400.
ds := RTData new.
ds dotShape cross color: (Color red alpha: 0.3).
ds points: (RTShape withAllSubclasses flatCollect: #rtmethods).
ds x: #numberOfLinesOfCode.
ds y: [ :m | m getSource size ].
b add: ds.
b build.
b view] onPackagesMatchingExpresions: { 'Roassal2' . 'Trachel' }  ) inspect