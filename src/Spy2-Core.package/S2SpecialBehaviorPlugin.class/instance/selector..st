accessing
selector: text
	| symbol |
	symbol := text asSymbol.
	self assert: [ 
		(symbol last = $: 
			and: [ 
				(symbol allButLast splitOn: $:) 
					allSatisfy: [ :txt | txt isNotEmpty] ])
			or: [ (symbol select: [:char | char = $:]) isEmpty ] ].
	selector := symbol