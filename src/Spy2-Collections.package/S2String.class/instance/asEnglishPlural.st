as yet unclassified
asEnglishPlural
	"Answer the plural of the receiver.  Assumes the receiver is an English noun.
	For a more comprehensive algorithm please refer to ''An Algorithmic Approach
	to English Pluralization'' by Damian Conway."

	self size < 2 ifTrue: [ ^self ].
	self asString = 'child' ifTrue: [ ^'children' ].

	((self last == $y) and: [ (self at: self size - 1) isVowel not ]) 
		ifTrue: [ ^self replaceSuffix: 'y' with: 'ies' ].
	(self endsWith: 's') ifTrue: [ ^self replaceSuffix: 's' with: 'ses' ].

	^self copyWith: $s.