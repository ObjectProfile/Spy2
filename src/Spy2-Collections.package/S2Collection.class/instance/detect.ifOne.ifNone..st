as yet unclassified
detect: aBlock ifOne: presentBlock ifNone: noneBlock
	| result |
	result := self detect: aBlock ifNone: [ ^ noneBlock value ].
	^ presentBlock value: result