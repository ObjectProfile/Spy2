as yet unclassified
addMessage: aMessage
	messages addLast: aMessage.
	messages size >= self queueMaxSize
		ifTrue: [ messages removeFirst ].
		
	messageIndex := messageIndex + 1.
	playBackIndex := playBackIndex + 1.
	aMessage index: messageIndex.