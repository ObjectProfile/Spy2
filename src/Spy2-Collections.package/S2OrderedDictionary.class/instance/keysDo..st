as yet unclassified
keysDo: aBlock
	1 to: self size do: [:i | aBlock value: (orderedKeys at: i)]