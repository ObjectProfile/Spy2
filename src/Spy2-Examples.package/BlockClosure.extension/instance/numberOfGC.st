*Spy2-Examples
numberOfGC
	"Number of times the garbage collection has been fully activated"
	| v |
	v := self getNumberOfGC.
	self value.
	^ self getNumberOfGC - v