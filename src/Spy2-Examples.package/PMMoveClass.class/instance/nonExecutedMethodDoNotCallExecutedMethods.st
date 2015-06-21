as yet unclassified
nonExecutedMethodDoNotCallExecutedMethods
	"Return true if none of the non-covered method may call a covered method"
	| cmms sentMessages coveredSelectors |
	cmms := self nonExecutedMethods collect: #originalMethod.
	sentMessages := cmms flatCollect: #messages.
	
	coveredSelectors := self executedMethods collect: #selector.
	^ (sentMessages includesAnyOf: coveredSelectors) not