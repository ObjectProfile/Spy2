meta-object-protocol
write: aValue to: anObject
	"We do not instrument primitive write to slots"
	^ originalSlot write: aValue to: anObject