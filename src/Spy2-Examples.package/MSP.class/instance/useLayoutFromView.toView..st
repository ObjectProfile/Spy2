visualize - buttons
useLayoutFromView: oldView toView: newView
	| oldElement newElement newMethods oldMethods |
	newMethods := newView elements select: [ :el | el model class == MSPMethod ].
	oldMethods := oldView elements select: [ :el | el model class == MSPMethod ].
	self assert: [ newMethods size = oldMethods size ].
	oldMethods copy do: [ :m |
		oldElement := oldMethods detect: [ :mm | mm model originalMethod selector = m model originalMethod selector and: [ mm model originalMethod methodClass name = m model originalMethod methodClass name ] ].
		newElement := newMethods detect: [ :mm | mm model originalMethod selector = m model originalMethod selector and: [ mm model originalMethod methodClass name = m model originalMethod methodClass name ] ].
		
		(oldElement notNil and: [ newElement notNil ]) 
			ifTrue: [ newElement translateTo: oldElement position ]
	
	].
	newView signalUpdate