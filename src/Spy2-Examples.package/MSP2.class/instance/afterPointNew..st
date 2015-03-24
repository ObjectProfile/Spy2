hooks
afterPointNew: point

	trackPoints ifTrue: [ (Point getSpy: self) record: point ]