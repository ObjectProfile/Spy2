as yet unclassified
minValue: aBlock
	^ self inject: (aBlock value: self anyOne) into: [ :min :each | min min: (aBlock value: each) ]