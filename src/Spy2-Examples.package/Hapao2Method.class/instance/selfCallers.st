accessing
selfCallers
	^ (self originalMethod selfCalledMethods collect: [ :cm | self classSpy allMethods detect: [ :spyM | spyM originalMethod == cm ] ifNone: [ nil ] ]) copyWithout: nil

"	^ self originalMethod selfCalls asSet collect: [ :cm | self classSpy allMethods detect: [ :spyM | spyM originalMethod == cm ] ]
"	

"	| answer allSibblingMethods m |
	answer := OrderedCollection new.
	allSibblingMethods := self classSpy allMethods.
	self callers do: [ :caller |
		m := allSibblingMethods 
				detect: [ :mm| mm selector = caller selector asString ] 
				ifNone: [ nil ].
		m ifNotNil: [ answer add: m ]
	].
	^ answer
"