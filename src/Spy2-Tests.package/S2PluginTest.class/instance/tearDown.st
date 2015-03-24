running
tearDown

	({S2pyA classWithMetaclass . S2pyB classWithMetaclass . S2pyDummyTest classWithMetaclass} 
		gather: #yourself) 
			do: [ :cls |
				#(#hash #identityHash #basicNew) do: [ :sel |
					(cls includesSelector: sel) ifTrue: [ 
						cls removeSelectorSilently: sel ] ] ]