accessing
pop
	| frame |
	frame := self value.
	self value: frame sender.
	^ frame