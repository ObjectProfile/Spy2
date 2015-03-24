as yet unclassified
example
	"
	self new example
	"

	| c prof |
	c := CCContract new.
	c addRule: (CCGrowRule new on: RTView>>#add: forValue: [ :aView | aView elements, aView edges ]).
	c addRule: (CCGrowRule new on: RTView>>#addAll: forValue: [ :aView | aView elements, aView edges ]).
	c addRule: (CCGrowRule new on: RTView>>#addMenu:callback: 
									forValue: [ :aView | aView canvas shapes ]).
	prof := CollC new.
	prof
		contract: c;
		profile: [ RTRoassalExample new exampleLabelAndCircle ] onPackageNamed: 'Roassal2'.
	^ prof