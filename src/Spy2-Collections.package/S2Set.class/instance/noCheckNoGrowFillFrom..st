as yet unclassified
noCheckNoGrowFillFrom: anArray
	"Add the elements of anArray except nils to me assuming that I don't contain any of them, they are unique and I have more free space than they require."

	1 to: anArray size do: [ :index |
		(anArray at: index) ifNotNil: [ :object |
			array
				at: (self scanForEmptySlotFor: object enclosedSetElement)
				put: object ] ]