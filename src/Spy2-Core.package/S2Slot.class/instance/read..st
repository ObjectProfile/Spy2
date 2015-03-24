meta-object-protocol
read: anObject
	"We do not instrument primitive read to slots"
	^ originalSlot read: anObject