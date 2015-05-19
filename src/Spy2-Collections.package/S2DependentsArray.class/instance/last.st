as yet unclassified
last
	self reverseDo: [:dep | ^dep].
	self error: 'this collection is empty'