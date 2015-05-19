as yet unclassified
new: sizeRequested 
	"Answer an instance of this class with the number of indexable
	variables specified by the argument, sizeRequested."
	
	self == S2String 
		ifTrue:[^S2ByteString new: sizeRequested]
		ifFalse:[^self basicNew: sizeRequested].