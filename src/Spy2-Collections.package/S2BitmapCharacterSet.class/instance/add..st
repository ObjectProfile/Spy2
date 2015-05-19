as yet unclassified
add: aCharacter
	| asciiValue |

	(asciiValue := aCharacter asciiValue) < 256
		ifTrue: [
			(byteCharacters at: asciiValue + 1)
				ifFalse: [tally := tally + 1].
			byteCharacters at: asciiValue + 1 put: true]
		ifFalse: [| byteIndex byte bitmask |
			byteIndex := (asciiValue // 8) - 32 + 1.
			(wideCharacters isNil or: [byteIndex > wideCharacters size])
				ifTrue: [self growWideCharacterBitmapTo: (byteIndex * 1.5) asInteger].

			byte := wideCharacters at: byteIndex.
			bitmask := 16r80 bitShift: (asciiValue \\ 8) negated.
			
			"Only increment the tally if the character is not already present"
			(byte bitAnd: bitmask) > 0
				ifFalse: [tally := tally + 1].

			wideCharacters at: byteIndex put: (byte bitOr: bitmask)].
	^ aCharacter.