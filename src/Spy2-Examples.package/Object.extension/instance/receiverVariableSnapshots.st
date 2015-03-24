*Spy2-Examples
receiverVariableSnapshots
	"Return an array of the variables's snapshots"

	| index value answer |
	index := self class instSize.
	answer := Array new: self class instSize.
	[ index > 0 ]
		whileTrue: 
			[ answer at: index put:  (self instVarAt: index) snapshotAsInteger.
			  index := index - 1].
	^ answer
