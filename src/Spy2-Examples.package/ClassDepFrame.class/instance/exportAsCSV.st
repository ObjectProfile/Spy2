export as CSV
exportAsCSV
	"Return a String descriping the dependency frame"
	| s |
	s := WriteStream on: String new.
	self exportAsCSVOn: s.
	^ s contents