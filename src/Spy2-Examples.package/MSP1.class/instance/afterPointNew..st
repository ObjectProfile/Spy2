plugin action handling
afterPointNew: point
	self spySender ifNotNil: [ (Point getSpy: self) countObject ]
	"(Point getSpy: self) countObject"