algorithm
getRecommandationsFor: classes
	| allMethods c t cp eligibleClasses |
	recommandations := OrderedCollection new.
	eligibleClasses := classes select: [ :cls | cls methods size >= 2 ].
	allMethods := (eligibleClasses flatCollect: #methods) select: #isEligible.
	
	allMethods do: [ :m |
		c := m methodClass.
		t := OrderedCollection new.
		eligibleClasses do: [ :ci |
			(m simWithClass: ci) > (m simWithClass: c)
				ifTrue: [ t add: ci ].
		].
		(self isCandidateClassesOkay: t) ifTrue:
			[ cp := self bestClass: m with: t.
			recommandations add: (PMRecommendation targetClass: cp method: m) ].
	].
	^ recommandations