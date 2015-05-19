as yet unclassified
localNameAfterPrefix: aPrefix
	"optimized"
	| prefixSize |

	(prefixSize := aPrefix size) > 0
		ifTrue: [^ self copyFrom: prefixSize + 2 to: self size]
		ifFalse: [^ self]