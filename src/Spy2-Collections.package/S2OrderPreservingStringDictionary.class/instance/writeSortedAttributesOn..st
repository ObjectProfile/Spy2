as yet unclassified
writeSortedAttributesOn: aTagWriter
	self keys sort do: [:attributeName |
		aTagWriter
			writeAttributeName: attributeName
			value: (self at: attributeName ifAbsent: '')]