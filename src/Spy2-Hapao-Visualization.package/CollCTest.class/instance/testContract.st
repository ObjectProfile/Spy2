as yet unclassified
testContract

	| c rule |
	c := CCContract new.
	c addRule: (CCGrowRule new on: RSCanvas>>#add: forValue: [ :aCanvas | aCanvas shapes ]).
	c addRule: (CCGrowRule new on: RSCanvas>>#addAll: forValue: [ :aCanvas | aCanvas shapes ]).

	self assert: (c isCheckableMethod: RSCanvas>>#add:).
	self assert: (c isCheckableMethod: RSCanvas>>#addAll:).

	
	rule := c ruleFor: RSCanvas>>#add:.
	self assert: (rule valueForReceiver: RSCanvas new) size equals: 0.