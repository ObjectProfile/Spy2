as yet unclassified
removeAt: index
	| removed |
	removed := self at: index.
	self removeIndex: index + firstIndex - 1.
	^removed