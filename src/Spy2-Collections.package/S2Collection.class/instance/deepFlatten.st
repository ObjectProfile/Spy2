as yet unclassified
deepFlatten

	^ S2Array streamContents: [ :stream |
			self do: [ :each | each deepFlattenInto: stream ]]