algorithm
getRecommandationsFor: classes
	| allMethods c t cp eligibleClasses cll |
	recommandations := OrderedCollection new.
	eligibleClasses := classes select: [ :cls | cls methods size >= 2 ].
	eligibleClasses := eligibleClasses select: [ :cls | self isClassEligible: cls ].
	allMethods := (eligibleClasses flatCollect: #methods) 
		select: [ :cm | 
			cll := self profiler >> cm methodClass name.
			(cll hasMethodNamed: cm selector) and: 
				[ (cll >> cm selector) isEligible ] ].

	allMethods do: [ :m |
		c := m methodClass.
		t := OrderedCollection new.
		eligibleClasses do: [ :ci |
			(m simWithClass: ci) > (m simWithClass: c)
				ifTrue: [ t add: ci ].
		].
		(self isCandidateClassesOkay: t) ifTrue:
			[ cp := self bestClass: m with: t.
			cp ifNotNil: 
				[ recommandations add: (PMRecommendation targetClass: cp method: m) ] ].
	].
	^ recommandations