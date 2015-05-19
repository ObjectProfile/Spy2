as yet unclassified
remove: aCharacter ifAbsent: aBlock
	| asciiValue |

	(asciiValue := aCharacter asciiValue) < 256
		ifTrue: [
			(byteCharacters at: asciiValue + 1)
				ifFalse: [^ aBlock value].
			byteCharacters at: asciiValue + 1 put: false]
		ifFalse: [| byteIndex byte bitmask |
			byteIndex := (asciiValue // 8) - 32 + 1.
			(wideCharacters isNil or: [byteIndex > wideCharacters size])
				ifTrue: [^ aBlock value].

			bitmask := 16r80 bitShift: (asciiValue \\ 8) negated.
			((byte := wideCharacters at: byteIndex) bitAnd: bitmask) > 0
				ifFalse: [^ aBlock value].

			wideCharacters at: byteIndex put: (byte bitAnd: bitmask bitInvert)].
	tally := tally - 1.
	^ aCharacter.