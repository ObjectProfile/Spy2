actions
afterStringNew: string

	self spySender ifNotNil: [ :sender | 
		sender count: string ]