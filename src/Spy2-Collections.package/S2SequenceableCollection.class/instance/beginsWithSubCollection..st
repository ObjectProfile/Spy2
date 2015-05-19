as yet unclassified
beginsWithSubCollection: aSequenceableCollection
	"Some platforms implement #beginsWith: to answer true for an empty argument."
	^ self beginsWith: aSequenceableCollection