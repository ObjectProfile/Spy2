as yet unclassified
sortBlock
	^ sortBlock ifNil: [ sortBlock := self defaultSortBlock ]