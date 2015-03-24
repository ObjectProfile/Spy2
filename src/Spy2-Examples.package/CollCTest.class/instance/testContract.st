as yet unclassified
testContract

	| c rule |
	c := CCContract new.
	c addRule: (CCGrowRule new on: RTView>>#add: forValue: [ :aView | aView elements ]).
	c addRule: (CCGrowRule new on: RTView>>#addAll: forValue: [ :aView | aView elements ]).
	c addRule: (CCGrowRule new on: RTView>>#addMenu:callback: 
									forValue: [ :aView | aView canvas shapes ]).

	self assert: (c isCheckableMethod: RTView>>#add:).
	self assert: (c isCheckableMethod: RTView>>#addAll:).
	self deny: (c isCheckableMethod: RTView>>#build).
	
	rule := c ruleFor: RTView>>#add:.
	self assert: (rule valueForReceiver: RTView new) size equals: 0.