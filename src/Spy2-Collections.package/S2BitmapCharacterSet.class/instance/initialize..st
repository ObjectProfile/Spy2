as yet unclassified
initialize: aCapacity
	byteCharacters := Array new: 256 withAll: false.
	aCapacity > 256
		ifTrue: [self growWideCharacterBitmapTo: ((aCapacity - 1) // 8) - 32 + 1].
	tally := 0.