as yet unclassified
ensureDo: aBlock 
	self do: [ :element | 
		[ aBlock value: element ] valueUninterruptably ]