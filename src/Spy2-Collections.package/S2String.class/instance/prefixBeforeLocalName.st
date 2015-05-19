as yet unclassified
prefixBeforeLocalName
	"Split the name into namespace prefix
	(Optimized code)"
	| i |

	i := self size.
	[i > 1]
		whileTrue: [
			((self at: i) == $:)
				ifTrue: [^ (self copyFrom: 1 to: i - 1)].
			i := i - 1].
	^ ''.