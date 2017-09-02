*Spy2-Core
allSpySlotsSuperclasses
	"Answer the set of slots used by the receiver, all superclasses, and all subclasses"

	| aList |
	aList := OrderedCollection new.
	self withAllSuperclasses do:
		[:cls | aList addAll: (cls slots select: #isSpy)].
	^ aList asSet