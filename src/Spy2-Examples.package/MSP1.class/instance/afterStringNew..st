plugin action handling
afterStringNew: string
	self spySender ifNotNil: [ (String getSpy: self) countObject ]
	"(String getSpy: self) countObject"