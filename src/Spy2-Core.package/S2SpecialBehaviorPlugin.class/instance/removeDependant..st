as yet unclassified
removeDependant: anObject
	(anObject isCompiledMethod 
		and: [ anObject selector = selector 
			and: [ (anObject methodClass >> #select) = anObject ]])
				ifTrue: [ self rawUninstallFrom: anObject methodClass ]