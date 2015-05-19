as yet unclassified
growWideCharacterBitmapTo: aSizeInBytes
	| newSize |

	newSize := aSizeInBytes min: (self lastCodePoint // 8) - 32 + 1.
	wideCharacters
		ifNil: [
			wideCharacters := ByteArray new: newSize.
			^ self].

	wideCharacters :=
		(ByteArray new: newSize)
			replaceFrom: 1
			to: wideCharacters size
			with: wideCharacters
			startingAt: 1.