as yet unclassified
includes: aCharacter
	| asciiValue |

	(asciiValue := aCharacter asciiValue) < 256
		ifTrue: [^ byteCharacters at: asciiValue + 1]
		ifFalse: [| byteIndex |
			wideCharacters
				ifNil: [^ false].
			(byteIndex := (asciiValue // 8) - 32 + 1) > wideCharacters size
				ifTrue: [^ false].
			^ ((wideCharacters at: byteIndex) bitAnd:
				(16r80 bitShift: (asciiValue \\ 8) negated)) > 0]