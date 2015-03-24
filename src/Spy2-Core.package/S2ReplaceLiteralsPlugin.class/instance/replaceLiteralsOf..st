action
replaceLiteralsOf: method
	(1 to: method numLiterals - 2) do: [ :index | | literal|
		literal := method literalAt: index.
		(translation includesKey: literal) ifTrue: [
				changes add: { method . index . literal }.
				method literalAt: index put: (translation at: literal).
			] ].