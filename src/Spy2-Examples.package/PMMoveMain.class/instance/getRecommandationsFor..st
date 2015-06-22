algorithm
getRecommandationsFor: classes
	| allMethods c t cp eligibleClasses |
	recommandations := OrderedCollection new.
	eligibleClasses := classes select: [ :cls | cls methods size >= 2 ].
	eligibleClasses := eligibleClasses select: [ :cls | self isClassEligible: cls ].
	allMethods := (eligibleClasses flatCollect: #methods) select: [ :cm | (self profiler >> cm methodClass name >> cm selector) isEligible ].

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