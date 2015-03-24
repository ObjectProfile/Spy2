visualization-list
visualizeAsList
	"Visualize a profile as a list of classes and methods, in the same spirit than http://www.eclemma.org"
	| v |
	v := RTView new.
	v @ RTVerticalDraggableView.
	self visualizeAsListOn: v.
	v open