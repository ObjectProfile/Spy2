as yet unclassified
removeUnreferencedKeys   "Undeclared removeUnreferencedKeys"

	^ self unreferencedKeys do: [:key | self removeKey: key].