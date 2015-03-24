util
removeUsingResponsibility
	Smalltalk allClasses do: [ :cls |
		((cls methods , cls class methods) 
			reject: [ :m | m responsibleSpy = nil ])
				do: [ :m | m responsibleSpy removeDependant: m ] ]