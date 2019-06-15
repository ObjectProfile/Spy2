as yet unclassified
testContract

	| c rule |
	c := CCContract new.
	c addRule: (CCGrowRule new on: RSView>>#add: forValue: [ :aView | aView elements ]).
	c addRule: (CCGrowRule new on: RSView>>#addAll: forValue: [ :aView | aView elements ]).

	self assert: (c isCheckableMethod: RSView>>#add:).
	self assert: (c isCheckableMethod: RSView>>#addAll:).

	
	rule := c ruleFor: RSView>>#add:.
	self assert: (rule valueForReceiver: RSView new) size equals: 0.