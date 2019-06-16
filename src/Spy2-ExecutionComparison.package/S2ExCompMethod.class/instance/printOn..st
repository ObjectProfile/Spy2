printing
printOn: str
	self afterMethod printOn: str.
	"super printOn: str.
	str nextPut: $<.
	self afterMethod printOn: str.
	str nextPut: $>."