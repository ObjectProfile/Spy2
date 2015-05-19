as yet unclassified
new
	| registry |
	registry := super new.
	S2WeakArray addWeakDependent: registry.
	^registry
