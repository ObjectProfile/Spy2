as yet unclassified
frequencyTable

	| answer |
	answer := S2Dictionary new.
	self asSet do: [ :v | answer at: v put: 0 ].
	self do: [:v | answer at: v put: (answer at: v) + 1 ].
	^ answer