ui actions
pickOneUnitTest
	"Pick one unit test for this class"

	"Check if there is a class named MyclassTest"
	| clsSpy referenringClasses |
	clsSpy := self profiler classAt: (self className, 'Test') asSymbol ifNone: [ nil ].
	clsSpy notNil ifTrue: [ ^ clsSpy theClass ].
	
	"Else, we pick any class"
	
	referenringClasses := SystemNavigation new allReferencesTo: self theClass binding.
	(self profiler allClasses collect: #theClass)
		do: [ :cls | (referenringClasses includes: cls)
								ifTrue: [ ^ cls ] ]
	 