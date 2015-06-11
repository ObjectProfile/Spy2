tests
testBasic
	| r |
	r := PMRecommendation new.
	self assert: r asString equals: 'PMRecommendation.unknown -> nil (-1.0)'