running
testInstallPlugin
	profiler profile: [ 
		self assert: (S2SlotStubExample slots allSatisfy: #isSpy).
		self assert: (S2SlotStubExampleSubclass slots allSatisfy: #isSpy).
		 ] onClasses: { S2SlotStubExample . S2SlotStubExampleSubclass }. 