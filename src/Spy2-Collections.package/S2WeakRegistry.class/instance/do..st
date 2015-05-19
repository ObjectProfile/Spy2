as yet unclassified
do: aBlock
	^self protected: [
		valueDictionary keysDo: aBlock.
	].
