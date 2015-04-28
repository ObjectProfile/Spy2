util
removeAllTemplates
	Smalltalk allClasses do: [ :cls |
		cls methods , cls class methods do: [ :m | 
			m isSpy ifTrue: [ 
				m methodClass methodDict 
					at: m selector 
					put: m originalMethod ] ] ]