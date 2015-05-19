as yet unclassified
allButFirstDo: block

	2 to: self size do:
		[:index | block value: (self at: index)]