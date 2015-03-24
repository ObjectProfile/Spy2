*Spy2-Core
ensureDo: aBlock 
	self do: [ :element | 
		[ aBlock value: element ] valueUninterruptably ]