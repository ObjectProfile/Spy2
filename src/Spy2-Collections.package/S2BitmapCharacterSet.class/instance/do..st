as yet unclassified
do: aBlock
	1 to: byteCharacters size do: [:i |
		(byteCharacters at: i)
			ifTrue: [aBlock value: (Character value: i - 1)]].

	wideCharacters
		ifNil: [^ self].
	1 to: wideCharacters size do: [:byteIndex |
		0 to: 7 do: [:shiftIndex |
			((wideCharacters at: byteIndex) bitAnd:
				(16r80 bitShift: shiftIndex negated)) > 0
				ifTrue: [
					aBlock value:
						(Character value:
							(byteIndex - 1) * 8 + 256 + shiftIndex)]]].