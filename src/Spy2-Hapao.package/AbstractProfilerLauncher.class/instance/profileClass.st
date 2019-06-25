public
profileClass
	"
	Ask the user to choose a recently-modified class and assess its coverage.
	
	self new profileClass
	"
	| cls |
	cls := self chooseClass.
	cls ifNil: [ ^ self ].
	self profileClass: cls