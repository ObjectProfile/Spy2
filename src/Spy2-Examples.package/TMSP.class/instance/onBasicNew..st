plugin
onBasicNew: obj
	(obj class getSpy: self) ifNotNil: [:spy | spy record: obj ]