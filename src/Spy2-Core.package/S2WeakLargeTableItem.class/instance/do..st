as yet unclassified
do: aBlock
	|node|
	node := self.
	[ node isNotNullItem ] whileTrue: [ 
		aBlock value: node.
		node := node next ]