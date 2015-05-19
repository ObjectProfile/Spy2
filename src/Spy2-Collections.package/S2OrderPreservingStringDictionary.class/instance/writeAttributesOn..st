as yet unclassified
writeAttributesOn: aTagWriter
	self keysDo: [:attributeName |
		aTagWriter
			writeAttributeName: attributeName
			value: (self at: attributeName ifAbsent: '')]